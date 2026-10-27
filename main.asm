section .data
    msg1  db '                    I', 10
    len1  equ $ - msg1
    msg2  db '                  wrote', 10
    len2  equ $ - msg2
    msg3  db '                 a poem', 10
    len3  equ $ - msg3
    msg4  db '             in the shape', 10
    len4  equ $ - msg4
    msg5  db '            of a Christmas', 10
    len5  equ $ - msg5
    msg6  db '         tree but then forgot', 10
    len6  equ $ - msg6
    msg7  db '      to water it and only a few', 10
    len7  equ $ - msg7
    msg8  db '                days', 10
    len8  equ $ - msg8
    msg9  db '                later', 10, 10
    len9  equ $ - msg9
    
    msg10 db '               there', 10
    len10 equ $ - msg10
    msg11 db '        were           words', 10
    len11 equ $ - msg11
    msg12 db '    all            over', 10
    len12 equ $ - msg12
    msg13 db '      the                carpet', 10
    len13 equ $ - msg13

section .text
    global _start

%macro PRINT 2
    mov eax, 4
    mov ebx, 1
    mov ecx, %1
    mov edx, %2
    int 0x80
%endmacro

_start:
    call print_tree_poem

    mov eax, 1
    xor ebx, ebx
    int 0x80

print_tree_poem:
    PRINT msg1, len1
    PRINT msg2, len2
    PRINT msg3, len3
    PRINT msg4, len4
    PRINT msg5, len5
    PRINT msg6, len6
    PRINT msg7, len7
    PRINT msg8, len8
    PRINT msg9, len9
    PRINT msg10, len10
    PRINT msg11, len11
    PRINT msg12, len12
    PRINT msg13, len13
    ret