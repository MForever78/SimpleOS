char *font_en;
char *font_zh;

int
font_load_fonts()
{
    font_en = fat16_read("/sys/asc16.bin");
    font_zh = fat16_read("/sys/hzk16.bin");

    return (font_en && font_zh);
}

void
font_disp_en_char_unsafe(int x, int y, char ch, int color, int bg)
{
    char *mask;
    char *limit_mask;

    mask = (font_en + ((int)ch << 4));
    limit_mask = mask + 16;

    while (mask < limit_mask) {
        disp_draw_byte_mask_unsafe(x, y, *mask++, color, bg);
        ++y;
    }
}

void
font_disp_zh_char_unsafe(int x, int y, char c0, char c1, int color, int bg)
{
    char *mask;
    char *limit_mask;

    mask = font_zh + (((c0 - 0xA1) * 94 + c1 - 0xA1) << 5);
    limit_mask = mask + 32;

    while (mask < limit_mask) {
        disp_draw_byte_mask_unsafe(x, y, *mask++, color, bg);
        disp_draw_byte_mask_unsafe(x + 8, y, *mask++, color, bg);
        ++y;
    }
}

void
font_disp_string_unsafe(int x, int y, char *str, int n, int color, int bg)
{
    while (n--) {
        if (*str >= 0xA1) {
            // treat it as Chinese
            font_disp_zh_char_unsafe(x, y, str[0], str[1], color, bg);
            str = str + 2;
            x = x + 16;
        }
        else{
            // English
            font_disp_en_char_unsafe(x, y, *str, color, bg);
            ++str;
            x = x + 8;
        }
    }
}

int
font_disp_string_xy(int x, int y, char *str, int color, int bg)
{ return font_disp_string_n_xy(x, y, str, 128, color, bg); }

int
font_disp_string_n_xy(int x, int y, char *str, int n, int color, int bg)
{
    n = min(strlen(str), n);
    n = min((1024 - x) >> 3, n);
    if (str[n - 1] >= 0xa1 && str[n] >= 0xa1) --n;
    font_disp_string_unsafe(x, y, str, n, color, bg);
    return n;
}
