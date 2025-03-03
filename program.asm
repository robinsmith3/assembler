; x86 Assembly Program to Add Two Numbers
; Using NASM syntax

section .data           ; Data section
    num1    dd  5       ; First number (32-bit integer)
    num2    dd  3       ; Second number (32-bit integer)
    result  dd  0       ; Storage for result

section .text           ; Code section
    global _start       ; Entry point for linker

_start:
    mov eax, [num1]     ; Load first number into EAX register
    add eax, [num2]     ; Add second number to EAX
    mov [result], eax   ; Store result in memory

    ; Exit program (Linux system call example)
    mov eax, 1          ; System call number for exit
    mov ebx, 0          ; Return code 0
    int 0x80            ; Make system call
