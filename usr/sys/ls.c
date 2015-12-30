
void
list(char *path)
{
    int *fd;
    char *c;
    char *buf, *buf_limit;
    int size, attr;

    fd = open(path);

    if (!fd) {
        printf("ÕÒ²»µ½ %s\n", path);
        return;
    }
    if (!file_is_dir(fd)) {
        c = path + strlen(path) - 1;
        while (c >= path && *c != '/') --c;
        printf("%s\t%d\n\n", ++c, file_size(fd));
    }
    else {
        size = file_size(fd);
        c = buf = malloc(size);
        buf_limit = buf + size;

        read(fd, buf, 0, size);

        while (c < buf_limit && *c && (*c != ' ')) {
            attr = c[11];   // ATTR
            if (!((attr & 2) || (attr & 4))) {
                // not hidden and not system

                if (attr & 16) {
                    c[8] = 0;
                    printf("\t%sDIR\n", c);
                }
                else {
                    c[11] = 0;
                    printf("\t%s\t%d\t%d\n", c, *(int*)(c + 28), *(int*)(c + 24) >> 16);
                }
            }
            c = c + 32;
        }
        free(buf);
    }

    close(fd);
}

int
main(int argc, char **argv)
{
    char *dir_path;

    if (argc < 2) {
        dir_path = malloc(256);
        get_cwd(dir_path);
        list(dir_path);
        free(dir_path);
    }
    else {
        --argc; ++argv;
        while (argc) {
            printf("%s\n", *argv);
            list(*argv);
            --argc; ++argv;
        }
    }

    return 0;
}

