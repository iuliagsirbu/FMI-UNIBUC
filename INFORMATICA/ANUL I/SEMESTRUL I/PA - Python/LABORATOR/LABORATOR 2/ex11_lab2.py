#%%
#prelucrare cu metode
s = input("sirul este ")
s = s.replace("pa", "")
s = s.replace("pe", "")
s = s.replace("pi", "")
s = s.replace("po", "")
s = s.replace("pu", "")
print(s)

#%%
s = input("sirul este ")
normal = ""
nr = 0
while nr<=(len(s)-1):
    if s[nr]=="p" and (s[nr+1] in ('a', 'e', 'i', 'o', 'u')):
        normal = normal + ""
    elif s[nr] in ('a', 'e', 'i', 'o', 'u') and s[nr-1]=='p':
        normal = normal + ""
    else:
        normal = normal + s[nr]
    nr = nr+1
print(normal)