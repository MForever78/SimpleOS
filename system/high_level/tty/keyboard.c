int _key_queue_b;
int _key_queue_e;
int *_key_queue;

int _key_shift;
int _key_ctrl;

int *_key_shift_map;

enum {
    KEY_BUFFER_SIZE = 256
};

void
keyboard_init()
{
    _key_queue = (int*)malloc(KEY_BUFFER_SIZE << 2);
    _key_queue_e = _key_queue_b = 0;
    _key_shift = _key_ctrl = 0;
    _key_shift_map = _key_shift_table;
}

void
keyboard_queue_push(int key)
{
    _key_queue[_key_queue_e] = key;
    _key_queue_e = (_key_queue_e + 1) & 0xFF;
}

int
keyboard_queue_pop()
{
    int ret;

    ret = _key_queue[_key_queue_b];
    _key_queue_b = (_key_queue_b + 1) & 0xFF;
    return ret;
}

int
keyboard_queue_size()
{ return (KEY_BUFFER_SIZE + _key_queue_e - _key_queue_b) & 0xFF; }

int
keyboard_get()
{
    int ret;
    char offset;

    while (1) {
        while (!keyboard_queue_size()) {};
        ret = keyboard_queue_pop();
        if      (ret == 16)     { _key_shift = 1; }
        else if (ret == -16)    { _key_shift = 0; }
        else if (ret == 17)     { _key_ctrl  = 1; }
        else if (ret == -17)    { _key_ctrl  = 0; }
        else {
            offset = ret < 0 ? -ret : ret;
            if (offset >= 'A' && offset <= 'Z') {
                offset = lowercase(offset);
                ret = ret < 0 ? -offset : offset;
            }

            if (_key_shift && _key_shift_map[offset]) {
                offset = _key_shift_map[offset];
                ret = ret < 0 ? -offset : offset;
            }

            ret = ret | (_key_shift << 28);
            ret = ret | (_key_ctrl  << 29);

            return ret;
        }
    }
}
