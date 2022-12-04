;//Sa se adauge in cadrul programului anterior la final un pas pentru a verifica daca cele doua valori calculate sunt egale. Daca da, sa se afiseze ”PASS”, altfel ”FAIL”.
.data
	s: .space 40
	s1: .space 40
	x: .space 20
	y: .space 20
	fs1: .asciz "%d"
	fs2: .asciz "numarul x este: "
	fs3: .asciz "numarul y este: "
	fs4: .asciz "Prima metoda este prin operatii aritmetice\n"
	fs5: .asciz "A doua metoda este prin operatii de shift (deplasare) logice\n"
	fs6: .asciz "%d\n"
	fs7: .asciz "PASS\n"
	fs8: .asciz "FAIL\n"
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
	popl %eax
	popl %eax
	
	pushl $fs3
	call printf
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	pushl $y
	pushl $fs1
	call scanf
	popl %eax
	popl %eax
	
	pushl $fs4
	call printf
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	mov $16, %ecx
	
	mov $0, %edx
	mov x, %eax
	div %ecx
	mov %eax, %ebx
	
	mov y, %eax
	mul %ecx
	mov %eax, %ecx
	
	add %ebx, %ecx
	mov %ecx, s
	mov %ecx, s1
	
	pushl s
	pushl $fs6
	call printf
	popl %eax
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	pushl $fs5
	call printf
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	mov $0, s
	mov x, %eax
	shr $4, %eax
	mov y, %ebx
	shl $4, %ebx
	add %eax, %ebx
	mov %ebx, s
	
	pushl s
	pushl $fs6
	call printf
	popl %eax
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	mov s1, %ecx
	cmp %ecx, %ebx
	
	je pass
	jne fail
	
	pass:
		pushl $fs7
		call printf
		popl %eax
		
		pushl $0 
		call fflush
		popl %eax
		
		jmp etexit
	
	fail:
		pushl $fs8
		call printf
		popl %eax
		
		pushl $0 
		call fflush
		popl %eax
	
	etexit:
		mov $1, %eax
		mov $0, %ebx
		int $0x80
