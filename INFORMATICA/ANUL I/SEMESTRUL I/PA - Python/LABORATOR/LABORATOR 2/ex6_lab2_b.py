#Nume: Sirbu Iulia-Georgiana, grupa 134
s = input("s=")
char = ""
nr=0
rez=""
for i in s:
    if len(char)==0:
        char = i
        nr = nr + 1
    else:
        if i==char:
            nr= nr +1
        else:
            #print(i, char, rez)
            rez = rez + str(nr) + char
            char = i
            nr = 1
rez = rez + str(nr) + char
print(rez)
