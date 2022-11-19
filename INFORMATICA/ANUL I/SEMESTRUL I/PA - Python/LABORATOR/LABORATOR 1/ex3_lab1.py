#Nume: Sirbu Iulia-Georgiana, grupa 134
l1=int(input("L1="))
l2=int(input("L2="))
a,b = l1,l2
while l1!=l2:
    if l1>l2:
        l1=l1-l2
    else: 
        l2=l2-l1
print(int(a*b/(l1*l1)))
