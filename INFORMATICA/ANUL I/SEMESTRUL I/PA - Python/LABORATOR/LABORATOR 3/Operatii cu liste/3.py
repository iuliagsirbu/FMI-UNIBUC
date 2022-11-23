#Nume: Sirbu Iulia-Georgiana, grupa 134
l = [int(x) for x in input("lista este: ").split()]
print("lista cu 0: ", l)
l = [x for x in l if x!=0]
print("lista fara 0: ", l)
