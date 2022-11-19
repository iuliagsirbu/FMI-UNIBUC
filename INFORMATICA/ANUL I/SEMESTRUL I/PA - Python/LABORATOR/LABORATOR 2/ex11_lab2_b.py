s = input("sirul este ")
pasare = ""
pfara = ""
nr = 0
while nr<(len(s)-1):
    if s[nr+1] == '-' or s[nr+1]==' ':
        pasare = pasare + s[nr] + 'p' + s[nr]
        pfara = pfara + s[nr] + 'p' + s[nr]
    elif s[nr] == '-':
        pasare = pasare + s[nr]
        pfara = pfara + ""
    elif s[nr+1] != '-' and s[nr]!='-' and s[nr+1]!=' ':
        pasare = pasare + s[nr]
        pfara = pfara + s[nr]
    nr=nr+1
pasare = pasare + 'p' + s[nr-1] + '.'
pfara = pfara + 'p' + s[nr-1] + '.'
print("sirul cu cratima este: ", pasare)
print("sirul fara cratima este: ", pfara)