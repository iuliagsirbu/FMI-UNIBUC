#Nume: Sirbu Iulia-Georgiana, grupa 134
n = int(input("n= "))
L = [x*(-1)**(x+1) for x in range(1,n+1)]
# L = [x if x%2!=0 else -x for x in range(1,n+1)] || operatorul ternar
print(L)