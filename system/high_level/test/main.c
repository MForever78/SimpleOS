int
main()
{
    char *buffer;

    console_print_str(
            "SimpleOS v0.1\n"
            "System ready\n",
            0x7FFF
        );

    buffer = malloc(256);

    while (1) {
        getline(buffer, 256);
        console_print_str(buffer, 256);
    }
}
