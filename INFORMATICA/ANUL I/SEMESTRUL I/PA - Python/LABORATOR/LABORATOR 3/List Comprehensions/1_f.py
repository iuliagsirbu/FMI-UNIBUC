#Nume: Sirbu Iulia-Georgiana, grupa 134
L = [int(x) for x in input("lista este ").split()]
L = [tuple(L[i:i+2]) for i in range(len(L)-1)]
print(L)