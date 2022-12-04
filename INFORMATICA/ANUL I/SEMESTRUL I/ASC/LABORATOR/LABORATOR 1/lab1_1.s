.data
	x: .space 20
	y: .space 20
	fs1: .asciz "%d"
	fs2: .asciz "numarul x este: "
	fs3: .asciz "numarul y este: "
	fs4: .asciz "%s %d %d\n"
	fs5: .asciz "numerele dupa interschimbare sunt:"
.text
.global main
main:
	pushl $fs2
	call printf
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	pushl $x
	pushl $fs1
	call scanf
	popl %ebx
	popl %ebx
	
	pushl $fs3
	call printf
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	pushl $y
	pushl $fs1
	call scanf
	popl %ebx
	popl %ebx
	
	mov x, %eax
	mov y, %ebx
	mov %ebx, x
	mov %eax, y
	
	pushl y
	pushl x
	pushl $fs5
	pushl $fs4
	call printf
	popl %ebx
	popl %ebx
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %eax
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
	
