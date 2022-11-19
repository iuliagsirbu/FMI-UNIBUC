#Nume: Sirbu Iulia-Georgiana, grupa 134
s = input("s=")
litera = s[0]
s = s.replace(litera, "")
print("Dupa stergerea literei {} sirul obtinut este {} de lungime {}".format(litera, s, len(s)))