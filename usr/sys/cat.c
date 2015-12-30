
int
main(int argc, char **argv)
{
    char *buf;
    int *fd;
    int size;

    if (argc < 2) {
        printf("未提供参数\n");
        printf("用法: cat <file>\n");
        return -1;
    }

    --argc; ++argv;
    while (argc) {
        fd = open(*argv);
        if (!fd) {
            printf("找不到文件 %s\n", *argv);
        }
        else if (file_is_dir(fd)) {
            printf("%s 是一个目录\n", *argv);
        }
        else {
            size = file_size(fd);
            buf = malloc(size);
            read(fd, buf, 0, size);
            print_str(buf, size);
            free(buf);
        }
        close(fd);

        --argc; ++argv;
    }

    return 0;
}
