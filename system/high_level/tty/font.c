char *font_en;
char *font_zh;

int
load_fonts()
{
    font_en = fat16_read("/sys/asc16.bin");
    font_zh = fat16_read("/sys/hzk16.bin");

    return (font_en && font_zh);
}
