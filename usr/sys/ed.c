
char *buf;
int buf_size;

int line_number;
char *line_start;
char *input_buf;

int
main(int argc, char **argv)
{
    int *fd;
    int size;
    char *c, rep;

    buf_size = 100*1024;
    buf = malloc(buf_size);
    line_number = 1;
    line_start = buf;
    buf[0] = 0;

    input_buf = malloc(256);

    if (argc >= 2) {
        fd = open(argv[1]);
        if (!fd) {
            printf("�޷���ȡ�ļ� %s\n", argv[1]);
        }
        else {
            size = file_size(fd);
            if (size > buf_size) {
                printf("�ļ���С��������\n");
            }
            else {
                read(fd, buf, 0, size);
                buf[size] = 0;
                printf("��ȡ %d �ֽ�\n", size);
            }
        }
        close(fd);
    }

    while (1) {
        printf("* ");
        get_line(input_buf);
        if (input_buf[0] == 'q') {
            free(buf);
            free(input_buf);
            return 0;
        }
        else if (input_buf[0] == 'p') {
            c = line_start;
            while (*c && *c != '\n') ++c;
            rep = *c;
            *c = 0;
            printf("%s\n", line_start);
            *c = rep;
        }
        else if (input_buf[0] == 'w') {
            get_line(input_buf);
            size = strlen(input_buf);
            input_buf[size - 1] = 0;    // remove tailing '\n'
            if (size <= 1) {
                printf("�������ļ���\n");
            }
            else {
                fd = create(input_buf);
                if (!fd) {
                    printf("�޷������ļ� %s\n", input_buf);
                }
                else {
                    write(fd, buf, 0, strlen(buf));
                }
                close(fd);
            }
        }
        else if (input_buf[0] == 'i') {
            get_line(input_buf);
            size = strlen(line_start);
            memmove(line_start + strlen(input_buf), line_start, size + 1);  // copy the tailing '\0'
            memcpy(line_start, input_buf, strlen(input_buf));
        }
        else if (input_buf[0] == 'a') {
            get_line(input_buf);
            if (*line_start) {
                ++line_number;
                while (*line_start++ != '\n');
            }
            size = strlen(line_start);

            memmove(line_start + strlen(input_buf), line_start, size + 1);  // copy the tailing '\0'
            memcpy(line_start, input_buf, strlen(input_buf));
        }
        else if (input_buf[0] == 'd') {
            c = line_start;
            while (*c && *c != '\n') ++c;
            if (*c) ++c;
            memmove(line_start, c, strlen(c) + 1);
        }
        else if (input_buf[0] == 'l') {
            get_line(input_buf);
            size = 0;
            c = input_buf;
            while (*c >= '0' && *c <= '9') {
                size = size * 10 + (*c++ - '0');
            }
            line_number = 1;
            line_start = buf;
            while (--size && *line_start) {
                while (*line_start && *line_start != '\n') ++line_start;
                ++line_number;
                ++line_start;
            }
        }
        else if (input_buf[0] == 'g') {
            printf("%d\n", line_number);
        }
        else {
            printf("a: �ڵ�ǰ��֮�����\n");
            printf("d: ɾ����ǰ��\n");
            printf("g: ��ʾ��ǰ�к�\n");
            printf("i: �ڵ�ǰ��֮ǰ����\n");
            printf("l: �л���ĳ��\n");
            printf("p: ��ӡ��ǰ��\n");
            printf("q: �˳�\n");
            printf("w: �����ļ�\n");
        }
    }

    free(buf);
    free(input_buf);
    return 0;
}

