
int input_method_enable;

void
io_init()
{
    input_method_enable = 0;
}

void
key_displayable(int ch) {
    return (ch >= 32) && (ch < 127);
}

int
getchar()
{ return console_read_char(); }

int
getline(char *buffer, int limit)
{
    int count;
    char ch;

    count = 0;
    while (1) {
        if (input_method_enable) {
            ch = getchar();
            // TODO
        }
        else {
            ch = getchar();
            if (ch == 18) {
                input_method_enable = 1 - input_method_enable;  // toggle input method
            }
            else if (ch == 8) {
                if (count) {
                    count--;
                    console_backspace();
                }
            }
            else if (ch == '\n') {
                console_print_str(&ch, 1);
                buffer[count++] = ch;
                buffer[count] = 0;
                return count;
            }
            else if (key_displayable(ch)) {
                console_print_str(&ch, 1);
                buffer[count++] = ch;
                if (count + 1 == limit) {
                    buffer[count] = 0;
                    return count;
                }
            }
        }
    }
}

void
_print_number(int num)  // for debug only
{
    char *buffer;
    char *p;

    buffer = "            ";      // BLACK MAGIC
    p = buffer + 11;

    if (!num) {
        console_print_str("0", 1);
        return;
    }
    while (num) {
        *p-- = '0' + (num % 10);
        num = num / 10;
    }

    console_print_str(p + 1, p - buffer);
}

