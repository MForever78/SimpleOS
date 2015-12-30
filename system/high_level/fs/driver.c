int DRIVER_BLOCK_SIZE;
int _driver_sector_start;
int _driver_sector_count;

void
driver_init()
{
    char *mbr;

    DRIVER_BLOCK_SIZE = 512;

    mbr = malloc(DRIVER_BLOCK_SIZE);
    _platform_read_block(0, mbr);

    _driver_sector_start = load_dword_unaligned(mbr + 454);
    _driver_sector_count = load_dword_unaligned(mbr + 458);

    free(mbr);
}

void
read_blocks(int start, int count, char *ptr)
{
    start = _driver_calc_offset(start);

    while (count--) {
        _platform_read_block(start++, ptr);
        ptr = ptr + DRIVER_BLOCK_SIZE;
    }
}

void
write_blocks(int start, int count, char *ptr)
{
    start = _driver_calc_offset(start);

    while (count--) {
        _platform_write_block(start++, ptr);
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
