
int
main(int argc, char **argv)
{
    int result;
    char *buf;

    if (argc == 1) { return 0; }
    change_dir(argv[1]);
    result = get_env_error();
    if      (result == -1) { print_str("Path too long\n", 0x7FFF); }
    else if (result == -2) { print_str("Path not found\n", 0x7FFF); }
    else if (result == -3) { print_str("Path not a dir\n", 0x7FFF); }
    else {
        buf = malloc(256);
        get_cwd(buf);
        print_str(buf, 0x7FFF);
        print_str("\n", 1);
        free(buf);
    }

    return result;
}

