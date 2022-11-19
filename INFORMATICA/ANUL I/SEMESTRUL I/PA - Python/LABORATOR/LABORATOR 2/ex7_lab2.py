#Nume: Sirbu Iulia-Georgiana, grupa 134
s = input("s=")
w = s.split()
s = 0
for i in w:
    if i.isnumeric():
        s = s + int(i)
print("{} RON".format(s))