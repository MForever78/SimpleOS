int
main()
{
    char *buffer;
    int res;

    console_print_str(
            "SimpleOS v0.1\n"
            "System ready\n",
            0x7FFF
        );

    _print_number(12345 / 123);

    buffer = malloc(256);

    res = exec("/test.mrl");
    _print_number(res);

    while (1) {
        getline(buffer, 256);
        console_print_str(buffer, 256);
    }
}
