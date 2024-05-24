section .data
    exibe db "Hello World", 0xA
    tamanho equ $ - exibe

section .text

global _start

_start:

    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, exibe
    mov edx, tamanho

int 0x80

    mov eax, 0x1
    mov ebx, 0x0

int 0x80