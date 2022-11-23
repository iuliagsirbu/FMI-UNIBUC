#Nume: Sirbu Iulia-Georgiana, grupa 134
k = int(input("k= "))
l = [int(x) for x in input("lista este: ").split()]
print("lista initiala: ", l)
"""
fiind subsecventa => putem calcula intr-un singur for => O(1)
ex: a b c d e , k = 3
prima subsecv: a b c
a doua: elimin a, adaug d, compar suma: conditie ok => se retin indicii
a treia: elimin b, adaug e, repeat
"""
suma = 0
min = sum(l)
#print(min)
st = 0
dr = k-1
for i in range(k):
    suma += l[i]
if(suma<min):
    min = suma
for i in range(k, len(l)):
    #print(suma, st, dr, sep=" ", end="\n")
    suma = suma + l[i] - l[i-k]
    if suma<min:
        min = suma
        st = i-k+1
        dr = i
l[st:(dr+1)] = []
print("lista dupa modificare: ", l)

"""
TEST CASE
4
1 4 2 10 23 3 1 0 20
"""