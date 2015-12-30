#include "../../system/basic_level/macros.asm"

@def print_str
    @param str
    @param len

    move($a0, @str)
    move($a1, @len)
    li($v0, 10)

    syscall $v0
@enddef

@def get_char
    li($v0, 11)
    syscall $v0
@enddef

@def get_line
    @param buffer
    @param buflen

    move($a0, @buffer)
    move($a1, @buflen)
    li($v0, 12)
    syscall $v0
@enddef

@def malloc
    @param size

    move($a0, @size)
    li($v0, 21)
    syscall $v0
@enddef

@def free
    @param ptr

    move($a0, @ptr)
    li($v0, 22)
    syscall $v0
@enddef

@def get_cwd
    @param buf

    move($a0, @buf)
    li($v0, 23)
    syscall $v0
@enddef

@def change_dir
    @param rel

    move($a0, @rel)
    li($v0, 24)
    syscall $v0
@enddef

@def get_cmd
    @param buf

    move($a0, @buf)
    li($v0, 25)
    syscall $v0
@enddef

@def get_env_error
    li($v0, 26)
    syscall $v0
@enddef

@def open
    @param path

    move($a0, @path)
    li($v0, 13)
    syscall $v0
@enddef

@def create
    @param path

    move($a0, @path)
    li($v0, 14)
    syscall $v0
@enddef

@def read
    @param fd
    @param buf
    @param start
    @param length

    move($a0, @fd)
    move($a1, @buf)
    move($a2, @start)
    move($a3, @length)
    li($v0, 15)
    syscall $v0
@enddef

@def write
    @param fd
    @param buf
    @param start
    @param length

    move($a0, @fd)
    move($a1, @buf)
    move($a2, @start)
    move($a3, @length)
    li($v0, 16)
    syscall $v0
@enddef

@def close
    @param fd

    move($a0, @fd)
    li($v0, 17)
    syscall $v0
@enddef
