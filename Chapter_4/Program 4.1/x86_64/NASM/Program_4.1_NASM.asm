; Program 4.1
; Addition and Subtraction - NASM (64-bit)
; Copyright (c) 2020 Hall & Slonka

SECTION .data 
sum: DQ 0	;创建sum和val两个32位变量并为其指定初始值位0和25
val: DQ 25

SECTION .text 
global _main
_main:

mov rax, 0 	;将rax寄存器设为0
inc rax	;将rax寄存器加1
add rax, 200 	;把十进制的字面量200加到rax当前的值中，并将结果保存到rax中
sub rax, [val]	;从寄存器rax的值中减去变量val的值，并将结果保存在rax中
mov [sum], rax	;把rax的值存放到变量sum中 
dec QWORD [sum] ;给变量减1		 
neg QWORD [sum] ;对变量求补

mov rax, 60
xor rdi, rdi
syscall
