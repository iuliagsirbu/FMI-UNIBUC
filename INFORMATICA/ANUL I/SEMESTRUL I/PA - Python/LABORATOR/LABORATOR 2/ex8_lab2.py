s = input("s=")
w = s.split()
ok = False
check = 0
#print("w este " , w)
if len(w) > 2:
    check = 1
else:
    for i in w:
        #print("i este " , i)
        if i.count("-") > 1:
            #print("incorect")
            check = 1
        if i.count("-") == 1:
            l = i.split("-")
            for j in l:
                if j.isalpha() and j.istitle() and len(j)>=3:
                    ok = True
                else:
                    ok = False
        if i.count("-") == 0:
            if i.istitle() and i.isalpha() and len(i)>=3:
                ok = True
            else:
                ok = False
        if ok is False:
            check  = 1
if check == 0:
    print("Corect")
else:
    print("Incorect")
