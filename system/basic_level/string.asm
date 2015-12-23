#include "macros.asm"

@def memset
    @param ptr
    @param value
    @param count

    move(@tp, @ptr)
    move(@tv, @value)
    move(@tc, @count)

    beq @tc, @zero, _memset_end

    addi @tn, @tc, 7
    srl @tn, @tn, 3
    andi @label, @tc, 7

    sll @label, @label, 2
    addi @label, @label, _memset_jump_list
    add @label, @label, $gp
    lw @label, 0(@label)
    jr @label

_memset_jump_list:
    dd _memset_case_0
    dd _memset_case_1
    dd _memset_case_2
    dd _memset_case_3
    dd _memset_case_4
    dd _memset_case_5
    dd _memset_case_6
    dd _memset_case_7

_memset_case_0:
_memset_loop_begin:
    sb @tv, 0(@tp)
    addi @tp, @tp, 1
_memset_case_7:
    sb @tv, 0(@tp)
    addi @tp, @tp, 1
_memset_case_6:
    sb @tv, 0(@tp)
    addi @tp, @tp, 1
_memset_case_5:
    sb @tv, 0(@tp)
    addi @tp, @tp, 1
_memset_case_4:
    sb @tv, 0(@tp)
    addi @tp, @tp, 1
_memset_case_3:
    sb @tv, 0(@tp)
    addi @tp, @tp, 1
_memset_case_2:
    sb @tv, 0(@tp)
    addi @tp, @tp, 1
_memset_case_1:
    sb @tv, 0(@tp)
    addi @tp, @tp, 1

    addi @tn, @tn, -1
    bne @tn, @zero, _memset_loop_begin
    
@enddef # memset

@def memcpy
    @param dst
    @param src
    @param count

    move(@td, @dst)
    move(@ts, @src)
    move(@tc, @count)

    beq @tc, @zero, _memcpy_end

    addi @tn, @tc, 7
    srl @tn, @tn, 3
    andi @label, @tc, 7 # @tc % 8

    sll @label, @label, 2
    addi @label, @label, _memcpy_jump_list
    add @label, @label, $gp
    lw @label, 0(@label)
    jr @label

_memcpy_jump_list:
    dd _memcpy_case_0
    dd _memcpy_case_1
    dd _memcpy_case_2
    dd _memcpy_case_3
    dd _memcpy_case_4
    dd _memcpy_case_5
    dd _memcpy_case_6
    dd _memcpy_case_7

_memcpy_case_0:
_memcpy_loop_begin:
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
_memcpy_case_7:
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
_memcpy_case_6:
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
_memcpy_case_5:
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
_memcpy_case_4:
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
_memcpy_case_3:
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
_memcpy_case_2:
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
_memcpy_case_1:
    lb @tmp, 0(@ts)
    sb @tmp, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1

    addi @tn, @tn, -1
    bne @tn, @zero, _memcpy_loop_begin
@enddef # memcpy

@def memmove
    @param dst
    @param src
    @param len

    @local buf

    @call malloc, @len
    move(@buf, @retval)

    @call memcpy, @buf, @src, @len
    @call memcpy, @dst, @buf, @len
    @call free, @buf
@enddef

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

@def strnchr
    @param str
    @param char
    @param limit

    move(@retval, @str)
    move(@c, @char)
    move(@l, @limit)
    beq @l, @zero, _strnchr_end
_strnchr_loop_begin:
    lb @sc, 0(@retval)
    beq @c, @sc, _strnchr_end
    beq @zero, @sc, _strnchr_end
    addi @retval, @retval, 1
    addi @l, @l, -1
    bne @l, @zero, _strnchr_loop_begin
@enddef

@def strncmp
    @param sa
    @param sb
    @param len
    
    move(@ta, @sa)
    move(@tb, @sb)
    move(@tl, @len)
    move(@retval, @zero)
_strncmp_loop_begin:
    beq @tl, @zero, _strncmp_end
    addi @tl, @tl, -1
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

@def strcpy
    @param dst
    @param src

    move(@ts, @src)
    move(@td, @dst)

_strcpy_loop_begin:
    lb @ch, 0(@ts)
    sb @ch, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
    bne @ch, @zero, _strcpy_loop_begin
@enddef

@def strncpy
    @param dst
    @param src
    @param cnt

    move(@ts, @src)
    move(@td, @dst)
    move(@tc, @cnt)

    j _strncpy_loop_cmp
_strncpy_loop_begin:
    lb @ch, 0(@ts)
    sb @ch, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
    addi @tc, @tc, -1
    beq @ch, @zero, _strncpy_end
_strncpy_loop_cmp:
    bne @tc, @zero, _strncpy_loop_begin
    sb @zero, 0(@td)
@enddef

@def strnuppercase
    @param dst
    @param src
    @param count

    @local td
    @local ts
    @local tc

    move(@td, @dst)
    move(@ts, @src)
    move(@tc, @count)
    beq @tc, @zero, _strnuppercase_end
_strnuppercase_loop_begin:
    lb @tmp, 0(@ts)
    beq @tmp, @zero, _strnuppercase_end
    @call uppercase, @tmp
    sb @retval, 0(@td)
    addi @ts, @ts, 1
    addi @td, @td, 1
    addi @tc, @tc, -1
    bne @tc, @zero, _strnuppercase_loop_begin
@enddef

@global LOWER_A
    dd 'a'

@global LOWER_Z
    dd 'z'

@def uppercase
    @param char

    slt @compare_result, @char, @LOWER_A
    bne @compare_result, @zero, _uppercase_not_changed
    slt @compare_result, @LOWER_Z, @char
    bne @compare_result, @zero, _uppercase_not_changed

    addi @retval, @char, -32
    @return
_uppercase_not_changed:
    move(@retval, @char)
@enddef

@global UPPER_A
    dd 'A'

@global UPPER_Z
    dd 'Z'

@def lowercase
    @param char

    slt @compare_result, @char, @UPPER_A
    bne @compare_result, @zero, _lowercase_not_changed
    slt @compare_result, @UPPER_Z, @char
    bne @compare_result, @zero, _lowercase_not_changed

    addi @retval, @char, 32
    @return
_lowercase_not_changed:
    move(@retval, @char)
@enddef
