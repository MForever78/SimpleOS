
int
reloc(int *exec, int offset)
{
    int *sym, *limit, inst;

    if (*exec != ((0x04 << 26) | (0x02))) { return -1; }    // not MERL

    sym = (int*)((int)exec + exec[1]);
    limit = (int*)((int)exec + exec[2]);

    while (sym != limit) {
        _print_number(*sym);
        console_print_str(" ", 1);

        if ((*sym & 0x0F) == 0x2) { return -2; }            // unresolved symbol
        if (*sym == 0x11) {
            // I-type not modify
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

    return 0;
}

int
exec(char *path)
{
    int *exec, ret_code;

    int i;

    exec = fat16_read(path);
    if (!exec) { return -1024; }

    ret_code = reloc(exec, (int)exec);
    if (ret_code) { free(exec); return ret_code; }

    i = 0;
    while (i < 13) {
        _print_hex(exec[i++]);
        console_print_str(" ", 1);
    }

    ret_code = _actual_exec(exec);
    free(exec);
    return ret_code;
}

