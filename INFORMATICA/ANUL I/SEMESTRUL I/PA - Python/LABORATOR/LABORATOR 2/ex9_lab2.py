s = input("sirul este ")
k = int(input("cheia este "))
criptat = ""
for i in s:
    if i.isalpha():
        if i.islower():
            if ord(i) <= (122-k):
                criptat = criptat + chr(ord(i) + k)
            else:
                criptat = criptat + chr(97 + ord(i) - 122 + k - 1)
        elif i.isupper():
            if ord(i) <= (90-k):
                criptat = criptat + chr(ord(i) + k)
            else:
                criptat = criptat + chr(65 + ord(i) - 90 + k - 1)
    else:
        criptat = criptat + i
print("sirul criptat este ", criptat)