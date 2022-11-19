#Nume: Sirbu Iulia-Georgiana, grupa 134
s = input("s=")
cor = input("sirul corect ")
gre = input("sirul gresit ")
nr = s.count(gre)
s = s.replace(gre, cor, 2)
print(s)
if nr>2:
    print("textul contine prea multe greseli, doar 2 au fost corectate")