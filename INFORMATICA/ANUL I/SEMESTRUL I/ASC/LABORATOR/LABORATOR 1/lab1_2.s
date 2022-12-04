.data
	s: .space 12
.text
.global main
main:
	pushl $s
	call gets
	popl %ebx
	
	pushl $s
	call printf
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
	
