int DRIVER_BLOCK_SIZE;
int _driver_sector_start;
int _driver_sector_count;
int _disk_memory_offset;

void
driver_init()
{
    char *mbr;

    _disk_memory_offset = 0x0800 << 16;

    DRIVER_BLOCK_SIZE = 512;

    mbr = malloc(DRIVER_BLOCK_SIZE);
    _driver_read_block(0, mbr);

    _driver_sector_start = load_dword_unaligned(mbr + 454);
    _driver_sector_count = load_dword_unaligned(mbr + 458);

    free(mbr);
}

void
read_blocks(int start, int count, char *ptr)
{
    start = _driver_calc_offset(start);

    while (count--) {
        _driver_read_block(start++, ptr);
        ptr = ptr + DRIVER_BLOCK_SIZE;
    }
}

void
write_blocks(int start, int count, char *ptr)
{
    start = _driver_calc_offset(start);

    while (count--) {
        _driver_write_block(start++, ptr);
        ptr = ptr + DRIVER_BLOCK_SIZE;
    }
}

void
read_block(int index, char *ptr)
{ read_blocks(index, 1, ptr); }

void
write_block(int index, char *ptr)
{ write_blocks(index, 1, ptr); }

int
_driver_calc_offset(int start)
{ return start % _driver_sector_count + _driver_sector_start; }

int
_driver_read_block(int index, char *ptr)
{ memcpy(ptr, (index << 9) + _disk_memory_offset, DRIVER_BLOCK_SIZE); }

int
_driver_write_block(int index, char *ptr)
{ memcpy((index << 9) + _disk_memory_offset, ptr, DRIVER_BLOCK_SIZE); }
