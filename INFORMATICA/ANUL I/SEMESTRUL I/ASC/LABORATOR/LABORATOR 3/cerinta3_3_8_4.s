;//3.8.4 exercitiul 3. Rezolvarea consta in introducerea unui breakpoint inaintea loop-ului pentru a accesa si %edx=50
.data
	n: .long 5
	v: .long 10,20,30,40,50
.text
.globl main

main:
	lea v, %edi
	mov n,%ecx

etloop:
	mov n, %eax
	sub %ecx,%eax
	movl (%edi,%eax,4), %edx
	breakpoint:
		loop etloop

etexit:
	mov $1, %eax
	mov $0,%ebx
	int $0x80
