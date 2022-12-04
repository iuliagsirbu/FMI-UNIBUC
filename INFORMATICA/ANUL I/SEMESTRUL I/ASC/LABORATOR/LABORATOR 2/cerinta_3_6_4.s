.data
	x: .long 4
	y: .long 5
	shrr: .space 4
	shll: .space 4
	sarr: .space 4
	sall: .space 4
.text
.globl main
main:
	mov x, %eax
	shr $2, %eax
	mov %eax, shrr
	
	mov x, %eax
	shl $2, %eax
	mov %eax, shll
	
	mov x, %eax
	sar $2, %eax
	mov %eax, sarr
	
	mov x, %eax
	sal $2, %eax
	mov %eax, sall
	
	mov $1, %eax
	mov $0, %ebx
	int $0x80
