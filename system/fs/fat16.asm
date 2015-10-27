#include "driver.asm"

@global FAT_BOOT_RECORD             # buffer for FAT Boot Record
    dd 0

@global FAT_SECTOR_PER_CLUSTER      # sector per cluster
    dd 0

@global FAT_CLUSTER_SIZE            # size of cluster
    dd 0

@global FAT_MAX_ROOT_ENTRIES        # maximum number of root dir
    dd 0

@global FAT_START_OF_FAT            # buffer for FAT
    dd 0

@global FAT_OFFSET_OF_DATA
    dd 0

@global FAT_ROOT_SECTOR             # sector for Root
    dd 0

@global FAT_PATH_SEP                # path separator
    char '/'

@global FAT_EXT_SEP
    char '.'

## initialize fat16
@def fat16_init
    @local sector_per_cluster
    @local reserved_sectors
    @local sector_per_fat
    @local root_fp

    @call malloc, @DRIVER_BLOCK_SIZE    # allocate buffer for FAT Boot Record
    sw @retval, @&FAT_BOOT_RECORD
    @call read_block, @zero, @FAT_BOOT_RECORD   # read it

    move(@base_addr, @FAT_BOOT_RECORD)

    ## retrive infomation from FAT Boot Record
    lb @sector_per_cluster, FBR_SECTOR_PER_CLUSTER_B(@base_addr)
    lh @reserved_sectors,   FBR_RESERVED_SECTORS_W(@base_addr)
    lh @sector_per_fat,     FBR_SECTOR_PER_FAT_W(@base_addr)

    ## store SECTOR_PER_CLUSTER
    sw @sector_per_cluster, @&FAT_SECTOR_PER_CLUSTER

    ## store MAX_ROOT_DIR_ENTRIES
    addi @addr, @base_addr, FBR_MAX_ROOT_DIR_ENTRIES_W
    @call load_half_unaligned, @addr
    sw @retval, @&FAT_MAX_ROOT_ENTRIES

    ## calculate and store CLUSTER_SIZE
    sll @fat_cluster_size, @sector_per_cluster, 9   # assume BLOCK_SIZE = 512
    sw @fat_cluster_size, @&FAT_CLUSTER_SIZE

    ## calculate and read START_OF_FAT
    sll @fat_size, @sector_per_fat, 9
    @call malloc, @fat_size
    sw @retval, @&FAT_START_OF_FAT
    @call read_blocks, @reserved_sectors, @sector_per_fat, @FAT_START_OF_FAT

    sll @fat_length, @sector_per_fat, 1
    srl @root_length, @FAT_MAX_ROOT_ENTRIES, 4
    add @data_offset, @fat_length, @root_length
    add @data_offset, @data_offset, @reserved_sectors
    sw @data_offset, @&FAT_OFFSET_OF_DATA

    ## initialize ROOT_SECTOR
    sll @root_sector, @sector_per_fat, 1
    add @root_sector, @root_sector, @reserved_sectors
    sw @root_sector, @&FAT_ROOT_SECTOR
@enddef

@def fat16_file_size
    @param fp

    @local buffer
    @local ret
    
    lh @cluster, FILE_ENTRY_CLUSTER_W(@fp)
    beq @cluster, @zero, _fat16_file_size_root

    @call fat16_is_dir, @fp
    beq @retval, @zero, _fat16_file_size_dir

    @call malloc, @DRIVER_BLOCK_SIZE
    move(@buffer, @retval)

    @call _fat16_get_entry_of_file, @fp, @buffer

    lw @ret, ENTRY_FILE_SIZE_D(@retval)

    @call free, @buffer

    move(@retval, @ret)
    @return
_fat16_file_size_dir:
    move(@retval, @FAT_CLUSTER_SIZE)
    @return
_fat16_file_size_root:
    sll @retval, @FAT_MAX_ROOT_ENTRIES, 5   # mul by 32
@enddef

@def fat16_is_dir
    @param fp

    @local buffer
    @local ret

    lh @cluster, FILE_CLUSTER_W(@fp)
    beq @cluster, @zero, _fat16_is_dir_root

    @call malloc, @DRIVER_BLOCK_SIZE
    move(@buffer, @retval)

    @call _fat16_get_entry_of_file, @fp, @buffer
    
    lb @attr, ENTRY_ATTR_B(@retval)
    andi @ret, @attr, ENTRY_ATTR_DIR

    @call free, @buffer
    move(@retval, @ret)
    @return
_fat16_is_dir_root:
    li(@retval, 1)
@enddef

@def _fat16_get_entry_of_file
    @param fp
    @param buffer

    @local sector

    lh @cluster, FILE_ENTRY_CLUSTER_W(@fp)
    @call mul, @cluster, @FAT_SECTOR_PER_CLUSTER
    move(@sector, @retval)

    lh @offset, FILE_ENTRY_OFFSET_W(@fp)
    srl @offset, @offset, 9
    add @sector, @sector, @offset

    @call read_block, @sector, @buffer

    lh @offset, FILE_ENTRY_OFFSET_W(@fp)
    andi @offset, @offset, 0x01FF
    add @retval, @offset, @buffer
@enddef

@def fat16_open_file
    @param path

    @local fp
    @local fp_in_dir
    @local path_level_limit
    @local name
    @local ext
    @local path_buffer

    @call malloc, 11
    move(@path_buffer, @retval)

    move(@name, @path_buffer)
    addi @ext, @path_buffer, 8

    lb @ch, 0(@path)
    bne @ch, @FAT_PATH_SEP, _fat16_open_file_not_found
    addi @tmp, @path, 1
    sw @tmp, @&path

    ## find in root
    @call fat16_get_root_fd
    move(@fp, @retval)

_fat16_open_file_loop_begin:
    lb @ch, 0(@path)
    beq @ch, @zero, _fat16_open_file_found

    @call fat16_is_dir, @fp
    beq @retval, @zero, _fat16_open_file_not_found_and_free_fp

    @call strchr, @path, @FAT_PATH_SEP
    move(@path_level_limit, @retval)

    @call fat16_normalize_path_level, @path, @path_level_limit, @path_buffer
    @call fat16_find_in_dir, @fp, @name, @ext
    move(@fp_in_dir, @retval)
    @call free, @fp
    beq @fp_in_dir, @zero, _fat16_open_file_not_found

    addi @path, @path_level_limit, 1
    j _fat16_open_file_loop_begin

_fat16_open_file_not_found_and_free_fp:
    @call free, @fp
_fat16_open_file_not_found:
    @call free, @path_buffer
    li(@retval, 0)
    @return
_fat16_open_file_found:
    @call free, @path_buffer
    move(@retval, @fp)
@enddef

@def fat16_get_root_fd
    @local ret

    @call malloc, FILE_SIZE
    move(@ret, @retval)
    @call memset, @ret, @zero, FILE_SIZE
    move(@retval, @ret)
@enddef

@def fat16_normalize_path_level
    @param path_level
    @param path_level_limit
    @param buffer

    @local path_ext
    @local path_level_length

    @call memset, @buffer, @zero, 11

    sub @path_level_length, @path_level_limit, @path_level
    
    @call strnchr, @path_level, @FAT_EXT_SEP, @path_level_length
    move(@path_ext, @retval)
    sub @name_length, @path_ext, @path_level
    @call min, @name_length, 8
    @call strnuppercase, @buffer, @path_level, @retval

    lb @ch, 0(@path_ext)
    beq @ch, @FAT_EXT_SEP, _fat16_normalize_path_level_end
    beq @ch, @zero, _fat16_normalize_path_level_end

    addi @path_ext, @path_ext, 1
    sub @ext_length, @path_level_limit, @path_ext
    @call min, @ext_length, 3
    addi @ext_buffer, @buffer, 8
    @call strnuppercase, @ext_buffer, @path_ext, @retval
@enddef

@def fat16_find_in_dir
    @param fp
    @param name
    @param ext

    @local dir_size
    @local buffer
    @local entry
    @local ret

    @call fat16_file_size, @fp
    move(@dir_size, @retval)

    @call malloc, @dir_size
    move(@buffer, @retval)

    @call fat16_read_file, @fp, @zero, @dir_size, @buffer
    move(@entry, @buffer)

_fat16_find_in_dir_loop_begin:
    lb @first_byte, 0(@entry)
    beq @first_byte, @zero, _fat16_find_in_dir_not_found
    ## TODO detect dir file end

    addi @addr, @entry, ENTRY_NAME_S
    @call strncmp, @addr, @name, 8
    bne @retval, @zero, _fat16_find_in_dir_loop_next

    addi @addr, @entry, ENTRY_EXT_S
    @call strncmp, @addr, @ext, 3
    bne @retval, @zero, _fat16_find_in_dir_loop_next

    ## found
    @call malloc, ENTRY_SIZE
    move(@ret, @retval)

    lw @cluster, ENTRY_CLUSTER_W(@entry)
    sw @cluster, FILE_CLUSTER_W(@ret)

    sub @offset_in_dir, @entry, @buffer
    @call div, @offset_in_dir, @FAT_CLUSTER_SIZE
    sh @retval, FILE_ENTRY_CLUSTER_W(@ret)

    sub @offset_in_dir, @entry, @buffer
    @call mod, @offset_in_dir, @FAT_CLUSTER_SIZE
    sh @retval, FILE_ENTRY_OFFSET_W(@ret)

    move(@retval, @ret)
    @return
    
_fat16_find_in_dir_loop_next:
    addi @entry, @entry, ENTRY_SIZE
    j _fat16_find_in_dir_loop_begin

_fat16_find_in_dir_not_found:
    @call free, @buffer
    li(@retval, 0)
@enddef

@def fat16_next_entry
    @param entry
    addi @retval, @entry, ENTRY_SIZE
@enddef

## read data from a file
@def fat16_read_file
    @param fp
    @param start
    @param length
    @param ptr

    @local sector
    @local offset
    @local read_length
    
    ## set first sector and data offset
    @call div, @start, @DRIVER_BLOCK_SIZE
    @call _fat16_sector_in_file, @fp, @retval
    move(@sector, @retval)
    @call mod, @start, @DRIVER_BLOCK_SIZE
    move(@offset, @retval)
    j _fat16_read_file_loop_begin
    
_fat16_read_file_loop_begin:
    ## calculate read_length for this read
    sub @read_length, @DRIVER_BLOCK_SIZE, @offset
    @call min, @read_length, @length
    move(@read_length, @retval)

    ## read
    @call _fat16_read_file_in_sector, @sector, @offset, @read_length, @ptr

    ## modify loop variables
    ## TODO detect end of file
    sub @tmp, @length, @read_length
    sw @tmp, @&length
    add @tmp, @ptr, @read_length
    sw @tmp, @&ptr
    move(@offset, @zero)
    @call _fat16_next_sector, @sector
    move(@sector, @retval)
    bne @length, @zero, _fat16_read_file_loop_begin

@enddef

## calculate next sector in the file
@def _fat16_next_sector
    @param sector

    @local sector_next

    ## detect if sector_next is still in this cluster
    addi @sector_next, @sector, 1
    slt @compare_result, @FAT_OFFSET_OF_DATA, @sector_next
    beq @compare_result, @zero, _fat16_next_sector_return

    sub @offset, @sector_next, @FAT_OFFSET_OF_DATA
    @call mod, @offset, @FAT_SECTOR_PER_CLUSTER
    bne @retval, @zero, _fat16_next_sector_return

_fat16_next_sector_next_cluster:
    ## if not, call next_cluster
    @call div, @sector, @FAT_SECTOR_PER_CLUSTER
    @call _fat16_next_cluster, @retval
    @call mul, @retval, @FAT_SECTOR_PER_CLUSTER
    @return

_fat16_next_sector_return:
    move(@retval, @sector_next)
@enddef

## get sector in file by index
@def _fat16_sector_in_file
    @param fp
    @param index

    @local cluster
    @local ti

    move(@ti, @index)

    ## calculate first cluster
    lw @cluster, FILE_CLUSTER_W(@fp)
    beq @cluster, @zero, _fat16_sector_in_file_root

_fat16_sector_in_file_loop_begin:
    ## loop to find that cluster
    slt @compare_result, @ti, @FAT_SECTOR_PER_CLUSTER
    bne @compare_result, @zero, _fat16_sector_in_file_find_cluster
    @call _fat16_next_cluster, @cluster
    move(@cluster, @retval)
    sub @ti, @ti, @FAT_SECTOR_PER_CLUSTER
    j _fat16_sector_in_file_loop_begin

_fat16_sector_in_file_find_cluster:
    ## locate the sector
    @call mul, @cluster, @FAT_SECTOR_PER_CLUSTER
    add @retval, @retval, @ti
    @return
_fat16_sector_in_file_root:
    add @retval, @index, @FAT_ROOT_SECTOR
@enddef

## get next cluster
@def _fat16_next_cluster
    @param cluster

    ## lookup FAT
    sll @fat_offset, @cluster, 1
    addi @fat_offset, @fat_offset, 2
    add @fat_entry, @fat_offset, @FAT_START_OF_FAT
    lh @retval, 0(@fat_entry)
@enddef

@def _fat16_sector_of_cluster
    @param cluster

    addi @tmp, @cluster, -1
    @call mul, @tmp, @FAT_SECTOR_PER_CLUSTER
    add @retval, @retval, @FAT_OFFSET_OF_DATA
@enddef

@def _fat16_read_file_in_sector
    @param sector
    @param offset
    @param length
    @param ptr

    @local sector_buffer

    bne @offset, @zero, _fat16_read_file_in_sector_use_buffer
    bne @length, @DRIVER_BLOCK_SIZE, _fat16_read_file_in_sector_use_buffer

    @call read_block, @sector, @ptr
    @return

_fat16_read_file_in_sector_use_buffer:
    ## read that sector into a buffer
    @call malloc, @DRIVER_BLOCK_SIZE
    move(@sector_buffer, @retval)
    @call read_block, @sector, @sector_buffer

    ## copy requested part into caller''s buffer
    add @begin, @sector_buffer, @offset
    @call memcpy, @ptr, @begin, @length
    @call free, @sector_buffer
@enddef
