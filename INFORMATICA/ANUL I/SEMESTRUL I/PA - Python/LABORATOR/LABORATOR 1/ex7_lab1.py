#Nume: Sirbu Iulia-Georgiana, grupa 134
x = int(input("x="))
n = int(input("n="))
p = int(input("p="))
m = int(input("m="))
s = 0
while m:
    s = s+n*x
    m=m-n
    x=x-p*x/100
print(int(s))
