int 
main(int argc, char **argv)
{
    int poolsz, merl, fd, offset, codelen, start, size;
    char *output, *file, *c, *nbuf, *nn;
    int *orig,
        *dest,
        *o, *d, *nd, *rel,
        *t, *lo,
        i, tlen,
        *glob, **tg, *g;

    --argc; ++argv;

    merl = 0;
    start = 0;

    while (argc && **argv == '-') {
        if ((*argv)[1] == 'm') { merl = 1; }
        else if ((*argv)[1] == 'o') {
            if (! --argc) { printf("no output file\n"); exit(-1); }
            output = *++argv;
        }
        else if ((*argv)[1] == 's') {
            if (! --argc) { printf("no start\n"); exit(-1); }
            c = *++argv;
            while (*c && *c >= '0' && *c <= '9') {
                start = start * 10 + (*c++ - '0');
            }
        }
        --argc; ++argv;
    }

    if (!argc) { printf("Usage: lk -o output [-m] file ...\n"); exit(-1); }

    poolsz = 256 * 1024;
    if (!(orig = malloc(poolsz))) { printf("could not malloc(%d) original space\n", poolsz); exit(-1); }
    if (!(dest = malloc(poolsz))) { printf("could not malloc(%d) destination space\n", poolsz); exit(-1); }

    o = orig;
    glob = 0;
    tg = &glob;
    codelen = 0;
    offset = merl ? 12 : 0;
    while (argc) {
        if ((fd = open(file = *argv)) <= 0) { printf("could not open(%s)\n", file); exit(-1); }
        size = file_size(fd);
        if ((i = read(fd, (char*)o, 0, size)) <= 0) { printf("read() returned %d\n", i); exit(-1); }
        close(fd);
        if (*o != ((0x04 << 26) | (0x02))) { printf("file %s is not MERL\n", file); exit(-1); }
        if (o[2] != i) { printf("out of pool size, when processing %s (filesize: %d, but %d read)\n", file, o[2], i); exit(-1); }

        tlen = o[1] - 12;
        codelen = codelen + tlen;

        t = (int*)((int)o + o[1]);
        o = (int*)((int)o + o[2]);

        while (t < o) {
            if (*t == 0x00) {
                // global symbol
                *tg = t;
                tg = (int**)(t);
                i = 0;
                c = (char*)(t + 3);
                while (*c) { i = i * 147 + *c++; }
                t[1] = t[1] + offset - 12 + (merl ? 0 : start);
                t[2] = (i << 6) + t[2];
                t = (int*)((int)t + 12 + (t[2] & 0x3F) + sizeof(int) & -sizeof(int));
            }
            else if ((*t & 0xF) == 2) {
                // extern symbol
                t = (int*)((int)t + 12 + t[2] + sizeof(int) & -sizeof(int));
            }
            else if ((*t & 0xF) == 1) {
                // relocation address
                t = t + 2;
            }
        }

        --argc; ++argv;
        offset = offset + tlen;
    }

    *tg = 0;
    offset = merl ? 12 : 0;
    rel = (int*)((int)dest + (merl ? codelen + 12 : codelen));

    o = orig;
    d = dest;
    lo = t;

    if (merl) {
        *d++ = ((0x04 << 26) | (0x02));
        *d++ = codelen + 12;
        d++;
    }

    while (o < lo) {
        memcpy((char*)d, (char*)(o + 3), (o[1] - 12));
        tlen = o[1] - 12;
        nd = (int*)((int)d + tlen);
        t = (int*)((int)o + o[1]);
        o = (int*)((int)o + o[2]);

        while (t < o) {
            if ((*t & 3) == 0) {    // modified when calculating hash
                if (merl) {
                    *rel++ = 0x00;
                    *rel++ = t[1];
                    *rel++ = t[2] & 0x3F;
                    memcpy((char*)rel, (char*)(t + 3), t[2] & 0x3F);
                    rel = (int*)((int)rel + (t[2] & 0x3F) + sizeof(int) & -sizeof(int));
                }
                t = (int*)((int)t + 12 + (t[2] & 0x3F) + sizeof(int) & -sizeof(int));
            }
            else if ((*t & 0xF) == 2) { // external symbols
                i = 0;
                c = (char*)(t + 3);
                while (*c) { i = i * 147 + *c++; }
                i = (i << 6) + t[2];
                g = glob;
                while (g && i != g[2]) { g = (int*)*g; }
                if (g) {
                    if (*t == 0x02) {       // B-type
                        i = *(int*)((int)d + t[1] - 12);
                        *(int*)((int)d + t[1] - 12) = (((g[1] - (t[1] + offset - 12) - 4) >> 2) & ((1 << 16) - 1)) 
                                                        | (i & (((1 << 16) - 1) << 16));
                    }
                    else if (*t == 0x12) {  // I-type
                        i = *(int*)((int)d + t[1] - 12);
                        *(int*)((int)d + t[1] - 12) = (g[1] & ((1 << 16) - 1)) | (i & (((1 << 16) - 1) << 16));
                        if (merl) {
                            *rel++ = 0x11;
                            *rel++ = (t[1] + offset - 12);
                        }
                    }
                    else if (*t == 0x22) {  // J-type
                        i = *(int*)((int)d + t[1] - 12);
                        *(int*)((int)d + t[1] - 12) = ((g[1] >> 2) & ((1 << 26) - 1)) | (i & (((1 << 6) - 1) << 26));
                        if (merl) {
                            *rel++ = 0x21;
                            *rel++ = (t[1] + offset - 12);
                        }
                    }
                    else if (*t == 0x32) {  // DD
                        *(int*)((int)d + t[1] - 12) = g[1];
                        if (merl) {
                            *rel++ = 0x31;
                            *rel++ = (t[1] + offset - 12);
                        }
                    }
                }
                else {
                    if (merl) {
                        *rel++ = *t;
                        *rel++ = t[1] + offset - 12;
                        *rel++ = t[2];
                        memcpy((char*)rel, (char*)(t + 3), t[2]);
                        rel = (int*)((int)rel + t[2] + sizeof(int) & -sizeof(int));
                    }
                    else { printf("unresolved symbol: %s\n", (char*)(t + 3)); exit(-1); }
                }
                t = (int*)((int)t + 12 + t[2] + sizeof(int) & -sizeof(int));
            }
            else if (*t == 0x11) {              // I-type
                i = *(int*)((int)d + t[1] - 12);
                *(int*)((int)d + t[1] - 12) = ((i + offset - 12) & ((1 << 16) - 1)) | (i & (((1 << 16) - 1) << 16));
                if (merl) {
                    *rel++ = 0x11;
                    *rel++ = (t[1] + offset - 12);
                }
                t = t + 2;
            }
            else if (*t == 0x21) {              // J-type
                i = *(int*)((int)d + t[1] - 12);
                *(int*)((int)d + t[1] - 12) = ((i + ((offset - 12 + (merl ? 0 : start)) >> 2)) & ((1 << 26) - 1)) | (i & (((1 << 6) - 1) << 26));
                if (merl) {
                    *rel++ = 0x21;
                    *rel++ = (t[1] + offset - 12);
                }
                t = t + 2;
            }
            else if (*t == 0x31) {              // DD
                *(int*)((int)d + t[1] - 12) = *(int*)((int)d + t[1] - 12) + offset - 12 + (merl ? 0 : start);
                if (merl) {
                    *rel++ = 0x31;
                    *rel++ = (t[1] + offset - 12);
                }
                t = t + 2;
            }
        }

        d = nd;
        offset = offset + tlen;
    }

    if ((fd = create(output)) <= 0) { printf("open returned %d\n", fd); exit(-1); }

    if (merl) {
        dest[2] = (int)rel - (int)dest;
        write(fd, dest, 0, (int)rel - (int)dest);
    }
    else {
        write(fd, dest, 0, (int)d - (int)dest);
    }
    close(fd);

    free(orig);
    free(dest);

    return 0;
}
