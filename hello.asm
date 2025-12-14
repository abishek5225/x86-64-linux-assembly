section .data
  var1 db "Hello";
  var1_len equ $ - var1;

section .text
global _start

_start:
mov rax, 60;
mov rdi, 1;
syscall

