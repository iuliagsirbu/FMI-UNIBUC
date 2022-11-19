#Nume: Sirbu Iulia-Georgiana, grupa 134
s = input("s=")
nr = ""
rez = ""
for i in s:
    if i.isalpha() is False:
        nr += i
    else:
        #print(rez)
        rez = rez + int(nr) * i
        nr = ""
print(rez)