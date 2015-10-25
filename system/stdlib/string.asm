@def memset
    @param ptr
    @param value
    @param num

    move(@tptr, @ptr)
    move(@tval, @value)
    move(@tnum, @num)

_memset_loop_begin:
    beq @tnum, @zero, _memset_end
    sb @tval, 0(@tptr)
    addi @tptr, @tptr, 1
    addi @tnum, @tnum, -1
    j _memset_loop_begin
    
@enddef # memset

@def memcpy
    @param dst
    @param src
    @param count

    move(@td, @dst)
    move(@ts, @src)
    move(@tc, @count)
_memcpy_loop_begin:
    beq @tc, @zero, _memcpy_end
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
    addi @tc, @tc, -1
    j _memcpy_loop_begin

@enddef # memcpy

@def strchr
    @param str
    @param char

    move(@retval, @str)
    move(@c, @char)
_strchr_loop_begin:
    lb @sc, 0(@retval)
    beq @c, @sc, _strchr_end
    beq @zero, @sc, _strchr_end
    addi @retval, @retval, 1
    j _strchr_loop_begin
@enddef

@def strncmp
    @param sa
    @param sb
    @param len
    
    move(@ta, @sa)
    move(@tb, @sb)
    move(@tl, @len)
_strncmp_loop_begin:
    lb @a_content, 0(@ta)
    lb @b_content, 0(@tb)
    or @retval, @a_content, @b_content
    beq @retval, @zero, _strncmp_end

    sub @retval, @a_content, @b_content
    bne @retval, @zero, _strncmp_end

    addi @ta, @ta, 1
    addi @tb, @tb, 1
    j _strncmp_loop_begin
@enddef # strncmp

@def strcmp
    @param sa
    @param sb

    move(@ta, @sa)
    move(@tb, @sb)
_strcmp_loop_begin:
    lb @a_content, 0(@ta)
    lb @b_content, 0(@tb)
    or @retval, @a_content, @b_content
    beq @retval, @zero, _strcmp_end

    sub @retval, @a_content, @b_content
    bne @retval, @zero, _strcmp_end

    addi @ta, @ta, 1
    addi @tb, @tb, 1
    
    j _strcmp_loop_begin
@enddef # strcmp

@def strlen
    @param str

    move(@ts, @str)
    li(@retval, 0)
_strlen_loop_begin:
    lb @c, 0(@ts)
    beq @c, @zero, _strlen_end
    
    addi @retval, @retval, 1
    addi @ts, @ts, 1
    j _strlen_loop_begin
@enddef # strlen
