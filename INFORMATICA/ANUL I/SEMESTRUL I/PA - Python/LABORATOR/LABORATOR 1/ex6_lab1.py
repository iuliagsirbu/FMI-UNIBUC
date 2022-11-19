#Nume: Sirbu Iulia-Georgiana, grupa 134
n=int(input("n="))
nr_zero = 0
min = max = check = 0
cn = n
p = 1
while cn:
    if cn%10==0:
        nr_zero = nr_zero + 1
    cn = cn//10
for i in range(1,10):
    cn = n
    while cn:
        if i == cn%10:
            max = i*p + max
            p = p*10
            min = min *10 + i
            if min!=0 and check ==0:
                min = min*10**nr_zero
                check = 1
        cn = cn//10
max = max * 10**nr_zero
print("maximul este {} si minimul este {}".format(max, min))


    
