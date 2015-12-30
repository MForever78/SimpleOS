
char *
_convert_int(char *s, int t)
{
    char *rev, *ret;
    char c;

    if (t == 0) {
        *s++ = '0';
        return s;
    }
    if (t < 0) {
        *s++ = '-';
        t = -t;
    }

    rev = s;
    while (t) {
        *s++ = '0' + (t % 10);
        t = t / 10;
    }

    ret = s;

    --s;
    while (rev < s) {
        c = *rev;
        *rev = *s;
        *s = c;

        ++rev;  --s;
    }

    return ret;
}

char *
_convert_hex(char *s, int t)
{
    char *d;
    d = s + 8;

    *--d = (t & 0x0F) > 9 ? 'A' + (t & 0x0F) - 10 : '0' + (t & 0x0F);
    t = t >> 4;

    *--d = (t & 0x0F) > 9 ? 'A' + (t & 0x0F) - 10 : '0' + (t & 0x0F);
    t = t >> 4;

    *--d = (t & 0x0F) > 9 ? 'A' + (t & 0x0F) - 10 : '0' + (t & 0x0F);
    t = t >> 4;

    *--d = (t & 0x0F) > 9 ? 'A' + (t & 0x0F) - 10 : '0' + (t & 0x0F);
    t = t >> 4;

    *--d = (t & 0x0F) > 9 ? 'A' + (t & 0x0F) - 10 : '0' + (t & 0x0F);
    t = t >> 4;

    *--d = (t & 0x0F) > 9 ? 'A' + (t & 0x0F) - 10 : '0' + (t & 0x0F);
    t = t >> 4;

    *--d = (t & 0x0F) > 9 ? 'A' + (t & 0x0F) - 10 : '0' + (t & 0x0F);
    t = t >> 4;

    *--d = (t & 0x0F) > 9 ? 'A' + (t & 0x0F) - 10 : '0' + (t & 0x0F);
    t = t >> 4;

    return s + 8;
}

int
sprintf(char *buf, char *format)
{
    int *args;
    char *d, *s;
    int count;

    d = buf;
    s = format;
    args = &format;         // BLACK MAGIC
    ++args;
    count = 0;

    while (*s) {
        if (*s == '%') {
            ++count;
            ++s;
            if (*s == 'd') {
                d = _convert_int(d, *args++);
            }
            else if (*s == 'x') {
                d = _convert_hex(d, *args++);
            }
            else if (*s == 'c') {
                *d++ = *args++;
            }
            else if (*s == 's') {
                strcpy(d, *args);
                d = d + strlen(*args++);
            }
            else if (s[0] == '.' && s[1] == '*' && s[2] == 's') {
                strncpy(d, args[1], args[0]);
                d = d + args[0];
                args = args + 2;
                s = s + 2;
            }
            else {
                *d++ = *s;
            }
            s++;
        }
        else {
            *d++ = *s++;
        }
    }
    *d = 0;
    return d-buf;
}

int
printf(char *format)
{
    int *args;
    char *buf;
    char *d, *s;
    int count;

    buf = malloc(256);
    d = buf;
    s = format;
    args = &format;         // BLACK MAGIC
    ++args;
    count = 0;

    while (*s) {
        if (*s == '%') {
            ++count;
            ++s;
            if (*s == 'd') {
                d = _convert_int(d, *args++);
            }
            else if (*s == 'x') {
                d = _convert_hex(d, *args++);
            }
            else if (*s == 'c') {
                *d++ = *args++;
            }
            else if (*s == 's') {
                strcpy(d, *args);
                d = d + strlen(*args++);
            }
            else if (s[0] == '.' && s[1] == '*' && s[2] == 's') {
                strncpy(d, args[1], args[0]);
                d = d + args[0];
                args = args + 2;
                s = s + 2;
            }
            else {
                *d++ = *s;
            }
            s++;
        }
        else {
            *d++ = *s++;
        }
    }
    *d = 0;
    print_str(buf, d - buf);
    free(buf);

    return d-buf;
}

