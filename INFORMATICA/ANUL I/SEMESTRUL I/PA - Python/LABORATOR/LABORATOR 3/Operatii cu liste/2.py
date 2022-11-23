#Nume: Sirbu Iulia-Georgiana, grupa 134
l = [2,3,4,0,0]
ok=0
st=-1
for i in range(len(l)):
    if l[i]==0 and ok==0:
        ok=1
        st=i
    elif l[i]==0 and ok==1:
        l[st:(i+1)] = []
print(l)
