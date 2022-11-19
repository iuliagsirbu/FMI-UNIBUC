#Nume: Sirbu Iulia-Georgiana, grupa 134
n=int(input("n="))
max1 = None
max2= None
for i in range(n):
    x=int(input("x="))
    if max1 is None:
        max1 = x
    elif x<max1 and max2 is None:
        max2 = x
    elif x>max1:
        max2 = max1
        max1=x
    elif x>max2:
        max2=x
print("max1 este",max1)
print("max2 este", max2)
