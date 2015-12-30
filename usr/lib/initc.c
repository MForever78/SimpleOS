
int
initc()
{
    char *cmd, *p;
    int argc, ret;
    char **argv;

    cmd = malloc(256);
    get_cmd(cmd);

    argc = 0;
    argv = malloc(512);

    argv[argc++] = cmd;

    p = cmd;
    while (*p++) {
        if (*(p - 1) == ' ' && *p != ' ') {
            argv[argc++] = p;
            *(p - 1) = 0;
        }
    }

    ret = main(argc, argv);
    free(argv);
    free(cmd);

    return ret;
}
