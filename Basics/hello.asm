section .data
  var1 db "Hello";
  var1_len equ $ - var1;

section .text
global _start

_start:
  ; write(stdout, var1, var1_len)
mov rax, 1;
mov rdi, 1;
mov rsi, var1;
mov rdx, var1_len;
syscall

; exit
mov rax, 60
mov rdi, 0
syscall
