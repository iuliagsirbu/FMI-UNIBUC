#Nume: Sirbu Iulia-Georgiana, grupa 134
sir = input("sirul este ")
L = [[sir[i:len(sir)] + sir[0:i]] for i in range(len(sir))]
print(L)
