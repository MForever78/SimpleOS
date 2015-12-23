
int _platform_driver_waiting;

int
_platform_read_block(int index, char *ptr)
{
    int *disk_ctrl;

    _enable_disk_interrupt();

    disk_ctrl = (int*)((0x2000 << 16) + 0x0200);

    _platform_driver_waiting = 1;
    *disk_ctrl = index;
    while (_platform_driver_waiting);
    memcpy(ptr, 0x2000 << 16, DRIVER_BLOCK_SIZE);
}

int
_platform_write_block(int index, char *ptr)
{
    int *disk_ctrl;

    disk_ctrl = (int*)((0x2000 << 16) + 0x0200);

    memcpy(0x2000 << 16, ptr, DRIVER_BLOCK_SIZE);

    _platform_driver_waiting = 1;
    index = index + (1 << 31);
    *disk_ctrl = index;
    while (_platform_driver_waiting);
}
