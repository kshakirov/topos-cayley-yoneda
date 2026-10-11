.section .data
.align 8

cell_a:
    .quad 10

cell_b:
	.quad 0
cell_c:
    .quad 0

.section .text
.global _start

_start:

	jmp morph_f

morph_f:
	mov cell_a(%rip), %rax
	mov %rax, cell_b(%rip)

	jmp morph_g
morph_g:
    mov cell_b(%rip), %rax
    add $100, %rax
    mov %rax, cell_c(%rip)
	

	
	mov $60, %rax
	xor %rdi, %rdi
	syscall

