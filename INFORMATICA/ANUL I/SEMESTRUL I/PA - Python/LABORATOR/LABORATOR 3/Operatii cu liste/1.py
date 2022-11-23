#Nume: Sirbu Iulia-Georgiana, grupa 134
n = int(input("n= "))
l1=[]
l2=[]
print("l1 este: ")
for i in range(n):
    x=int(input())
    l1.append(x)
print("l2 este: ")
for i in range(n):
    x=int(input())
    l2.append(x)
l1[1::2] = l2[1::2]
print(l1)