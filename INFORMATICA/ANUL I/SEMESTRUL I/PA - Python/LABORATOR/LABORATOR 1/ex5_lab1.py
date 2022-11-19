#Nume: Sirbu Iulia-Georgiana, grupa 134
from math import sqrt
a = int(input("a="))
b = int(input("b="))
c = int(input("c="))
d = b**2 - 4*a*c
if d<0:
    print("ecuatia nu are nicio radacina, d<0")
elif d==0:
    print("ecuatia are o singura radacina", -b/2*a)
elif d>0:
    print("ecuatia are doua radacini distincte")
    print("x1 este", (-b+sqrt(d))/(2*a))
    print("x2 este", (-b-sqrt(d))/(2*a))