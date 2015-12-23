
int
shell()
{
    char *buffer;
    int length;
    int res;

    buffer = (char*)malloc(256);
    while (1) {
        console_print_str("$ ", 2);
        length = getline(buffer, 256);
        buffer[length - 1] = 0; // remove the tailing '\n'
        res = system(buffer);
        if (res == -1024) {
            console_print_str("Command not found: `", 0x7FFF);
            console_print_str(buffer, 0x7FFF);
            console_print_str("'\n\n", 0x7FFF);
        }
        else if (res == -1025) {
            console_print_str("Commond not MERL: `", 0x7FFF);
            console_print_str(buffer, 0x7FFF);
            console_print_str("'\n\n", 0x7FFF);
        }
        else if (res == -1026) {
            console_print_str("Command contains unresolved symbol: `", 0x7FFF);
            console_print_str(buffer, 0x7FFF);
            console_print_str("'\n\n", 0x7FFF);
        }
        else if (res) {
            console_print_str("Command returned: ", 0x7FFF);
            _print_number(res);
            console_print_str("\n\n", 0x7FFF);
        }
        else {
            console_print_str("\n", 0x7FFF);
        }
    }
}

