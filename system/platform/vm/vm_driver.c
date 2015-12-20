
int
_platform_read_block(int index, char *ptr)
{ memcpy(ptr, (index << 9) + (0x0800 << 16), DRIVER_BLOCK_SIZE); }

int
_platform_write_block(int index, char *ptr)
{ memcpy((index << 9) + (0x0800 << 16), ptr, DRIVER_BLOCK_SIZE); }
