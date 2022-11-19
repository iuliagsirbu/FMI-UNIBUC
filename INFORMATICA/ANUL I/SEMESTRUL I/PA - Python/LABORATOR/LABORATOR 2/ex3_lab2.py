#Nume: Sirbu Iulia-Georgiana, grupa 134
s = input("s=")
i = 0
j = len(s)-1
while i<=j:
    t = s[i:j]
    t = t.center(10)
    print(t)
    i=i+1
    j = j-1