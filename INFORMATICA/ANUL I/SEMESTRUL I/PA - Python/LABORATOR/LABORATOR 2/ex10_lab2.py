cuv1 = input("cuvantul 1 este ")
cuv2 = input("cuvantul 2 este ")
ordon1 = ""
ordon2 = ""
for i in range(97, 123):
    if cuv1.count(chr(i))!=0:
        ordon1 = ordon1 + chr(i)*cuv1.count(chr(i))
    if cuv2.count(chr(i))!=0:
        ordon2 = ordon2 + chr(i)*cuv2.count(chr(i))

if ordon1 == ordon2:
    print("anagrame")
else:
    print("nu sunt anagrame")