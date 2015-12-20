
int
reloc(int *exec, int offset)
{
    int *sym, *limit, inst;

    if (*exec != ((0x04 << 26) | (0x02))) { return -1; }    // not MERL

    sym = exec + exec[1];
    limit = exec + exec[2];

    while (sym != limit) {
        if ((*sym & 0x0F) == 0x2) { return -2; }            // unresolved symbol
        if (*sym == 0x11) {
            // I-type
            inst = *(int*)((int)exec + sym[1]);
            *(int*)((int)exec + sym[1]) = ((inst + offset) & ((1 << 16) - 1)) |
                    (inst & (((1 << 16) - 1) << 16));
            sym = sym + 2;
        }
        else if (*sym == 0x21) {
            // J-type
            inst = *(int*)((int)exec + sym[1]);
            *(int*)((int)exec + sym[1]) = ((inst + (offset >> 2)) & ((1 << 26) - 1)) | 
                    (inst & (((1 << 6) - 1) << 26));
            sym = sym + 2;
        }
        else if (*sym == 0x31) {
            // DD
            *(int*)((int)exec + sym[1]) = *(int*)((int)exec + sym[1]) + offset;
            sym = sym + 2;
        }
        else if (*sym == 0) {
            // Global
            sym = (int*)((int)sym + 12 + (sym[2] & 0x3F) + sizeof(int) & -sizeof(int));
        }
    }
}

int
exec(char *path)
{
    int *exec, ret_code;

    exec = fat16_read(path);
    if (!exec) { return -1024; }

    reloc(exec, (int)exec);
    ret_code = _actual_exec(exec);
    free(exec);
    return ret_code;
}

