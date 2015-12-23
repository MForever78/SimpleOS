
int console_rows;
int console_cols;
int console_color;
int console_bg_color;
int console_waitting;

int console_cursor_state;

int
console_init()
{
    font_load_fonts();
    console_rows = 0;
    console_cols = 0;
    console_color = 0xFFF;
    console_bg_color = 0;
    console_waitting = 0;
}

void
console_scroll_up_screen()
{
    char *base_addr;

    // one reserved line for input method
    base_addr = disp_get_base_addr();
    memcpy(base_addr, base_addr + (640 << 5), (448 << 8) * 5);
    disp_fill_rect_unsafe(0, 448, 640, 16, console_bg_color);

    console_rows = 46;
    console_cols = 0;
}

void
console_draw_cursor()
{
    console_cursor_state = 1;
    disp_fill_rect_unsafe(
            console_cols << 3,
            console_rows << 4,
            8,
            16,
            console_color
        );
}

void
console_toggle_cursor()
{
    console_cursor_state = 1 - console_cursor_state;
    disp_fill_rect_unsafe(
            console_cols << 3,
            console_rows << 4,
            8,
            16,
            console_cursor_state ? console_color : console_bg_color
        );
}

void
console_return_line()
{
    // one reserved row for input method
    if (++console_rows >= 29) {
        console_scroll_up_screen();
    }
    else {
        console_cols = 0;
    }
}

void
console_backspace()
{
    if (console_cols) {
        font_disp_en_char_unsafe(
                console_cols << 3,
                console_rows << 4,
                ' ',
                console_color,
                console_bg_color
            );
        --console_cols;
        console_draw_cursor();
    }
    else if (console_rows) {
        font_disp_en_char_unsafe(
                console_cols << 3,
                console_rows << 4,
                ' ',
                console_color,
                console_bg_color
            );
        --console_rows;
        console_cols = 79;
        console_draw_cursor();
    }
}

int
console_print_str(char *str, int n)
{
    int count;
    int tmp;
    char ch;

    if (!n) return 0;
    if (*str == '\n') {
        // fill the cursor on last line
        font_disp_en_char_unsafe(
                console_cols << 3,
                console_rows << 4,
                ' ',
                console_color,
                console_bg_color
            );
    }

    count = 0;
    while ((count++ < n) && (ch = *str++)) {
        if (ch == '\n') {
            console_return_line();
        }
        else if (ch == '\t') {
            tmp = (console_cols + 8) & -8;
            disp_fill_rect_unsafe(
                    console_cols << 3,
                    console_rows << 4,
                    (tmp - console_cols) << 3,
                    16,
                    console_bg_color
                );
            if ((console_cols = tmp) >= 80) {
                console_return_line();
            }
        }
        else if (ch >= 0xA1) {
            font_disp_zh_char_unsafe(
                    console_cols << 3,
                    console_rows << 4,
                    ch,
                    *str++,
                    console_color,
                    console_bg_color
                );
            if ((console_cols = console_cols + 2) >= 80) {
                console_return_line();
            }
            ++count;
        }
        else {
            font_disp_en_char_unsafe(
                    console_cols << 3,
                    console_rows << 4,
                    ch,
                    console_color,
                    console_bg_color
                );
            if ((++console_cols) >= 80) {
                console_return_line();
            }
        }
    }
    console_draw_cursor();
    return count;
}

int
console_read_char()
{
    int ret;
    console_waitting = 1;
    ret = keyboard_get();
    console_waitting = 0;
    return ret;
}

