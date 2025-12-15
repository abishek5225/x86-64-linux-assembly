section .data
  msg db "Hello World", 10;
  msg_len equ $ - msg

section .text
global _start

_start:
  mov r10, 10;loop counter

loop_start:
;check loop condition

  ;write(stdout, msg, msg_len)
  mov rax, 1;syscall: write
  mov rdi, 1;stdout
  mov rsi, msg;address of msg
  mov rdx, msg_len;length
  syscall

;loop 
dec r10; rcx--
cmp r10, 0;compare rcx with 0
jne loop_start; jump if rcx is not equal to 0

loop_end:
;Exit the program
mov rax, 60;System call to Exit
xor rdi, 0; Exit status code  
syscall
