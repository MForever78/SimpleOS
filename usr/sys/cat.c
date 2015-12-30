
int
main(int argc, char **argv)
{
    char *buf;
    int *fd;
    int size;

    if (argc < 2) {
        printf("δ�ṩ����\n");
        printf("�÷�: cat <file>\n");
        return -1;
    }

    --argc; ++argv;
    while (argc) {
        fd = open(*argv);
        if (!fd) {
            printf("�Ҳ����ļ� %s\n", *argv);
        }
        else if (file_is_dir(fd)) {
            printf("%s ��һ��Ŀ¼\n", *argv);
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
