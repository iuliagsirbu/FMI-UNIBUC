.data
	x: .long 4
	y: .long 5
	notx: .space 4
	noty: .space 4
	andd: .space 4
	orr: .space 4
	xorr: .space 4
	testt: .space 4
.text
.globl main
main:
	mov x, %eax
	not %eax
	mov %eax, notx
	
	mov y, %eax
	not %eax
	mov %eax, noty
	
	mov x, %eax
	mov y, %ebx
	and %ebx, %eax
	mov %eax, andd
	
	mov x, %eax
	mov y, %ebx
	or %ebx, %eax
	mov %eax, orr
	
	mov x, %eax
	mov y, %ebx
	xor %ebx, %eax
	mov %eax, xorr
	
	mov x, %eax
	mov y, %ebx
	test %ebx, %eax
	mov %eax, testt
	
	mov $1, %eax
	mov $0, %ebx
	int $0x80
