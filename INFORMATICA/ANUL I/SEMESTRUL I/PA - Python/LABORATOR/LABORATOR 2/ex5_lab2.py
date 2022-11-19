#Nume: Sirbu Iulia-Georgiana, grupa 134
n = input("n=")
w = n.split()
s = input("s=")
t = input("t=")
rez = ""
for i in w:
    if i  == s:
        rez += t + " "
    else:
        rez += i + " "
print(rez)