
int
_platform_read_block(int index, char *ptr)
{
    int *disk_ctrl;

    disk_ctrl = (int*)((0x2000 << 16) + 0x0200);

    *disk_ctrl = index;
    memcpy(ptr, 0x2000 << 16, DRIVER_BLOCK_SIZE);
}

int
_platform_write_block(int index, char *ptr)
{
    int *disk_ctrl;

    disk_ctrl = (int*)((0x2000 << 16) + 0x0200);

    memcpy(0x2000 << 16, ptr, DRIVER_BLOCK_SIZE);

    index = index + (1 << 31);
    *disk_ctrl = index;
}
