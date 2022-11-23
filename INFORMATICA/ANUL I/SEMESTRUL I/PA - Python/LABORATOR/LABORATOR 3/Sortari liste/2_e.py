#Nume: Sirbu Iulia-Georgiana, grupa 134
"""def conditie(x):
    return len(str(x)), x"""
L = [1544, 12, 131, 1, 16755, 15, 2, 5666]
L = sorted(L, key = lambda x: (len(str(x)), x))
print(L)