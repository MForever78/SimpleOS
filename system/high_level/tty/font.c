char *font_en;
char *font_zh;

void
font_disp_en_char_unsafe(int x, int y, char ch)
{
    int *dist;

    dist = (int*)(0x4000 << 16) + (((y << 4) * 5) + x);
    *dist = ch;
}

void
font_disp_string_unsafe(int x, int y, char *str, int n)
{
    while (n--) {
        font_disp_en_char_unsafe(x, y, *str);
        ++str;
        x = x + 8;
    }
}

int
font_disp_string_n_xy(int x, int y, char *str, int n)
{
    n = min(strlen(str), n);
    n = min((80 - x), n);
    font_disp_string_unsafe(x, y, str, n);
    return n;
}

int
font_disp_string_xy(int x, int y, char *str)
{ return font_disp_string_n_xy(x, y, str, 128); }
