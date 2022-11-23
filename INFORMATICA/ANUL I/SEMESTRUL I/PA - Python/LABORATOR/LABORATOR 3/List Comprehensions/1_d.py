#Nume: Sirbu Iulia-Georgiana, grupa 134
L = [int(x) for x in input("lista este ").split()]
L = [L[i] for i in range(len(L)) if i%2==1]
print(L)
