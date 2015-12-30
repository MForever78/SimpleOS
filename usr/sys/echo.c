
int
main(int argc, char **argv)
{
    --argc; ++argv;

    while (argc--) {
        print_str(*(argv++), 0x7FFF);
        print_str(" ", 1);
    }

    return 0;
}

