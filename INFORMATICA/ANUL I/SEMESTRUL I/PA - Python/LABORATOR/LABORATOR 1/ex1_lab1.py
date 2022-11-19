#Nume: Sirbu Iulia-Georgiana, grupa 134
#Se citește un număr natural n. Să se testeze dacă este palindrom.
n = int(input("n="))
cn = n
ogl = 0
while cn!=0:
    ogl=ogl*10+cn%10
    cn=cn//10
print(ogl)