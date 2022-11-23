#Nume: Sirbu Iulia-Georgiana, grupa 134
n= int(input("n="))
L = [[f"{i} * {j} = {i*j}" for j in range(1, n+1)] for i in range (1, n+1)]
print(*L, sep="\n")