#Nume: Sirbu Iulia-Georgiana, grupa 134
def conditie(x):
    distinct = []
    nr = 0 
    while x:
        if x%10 not in distinct:
            distinct.append(x%10)
            nr += 1
        x = x//10
    return nr
L = [154, 132, 121, 131, 167]
L = sorted(L, key = lambda x: conditie(x))
# L = sorted(L, key = conditie)
print(L)