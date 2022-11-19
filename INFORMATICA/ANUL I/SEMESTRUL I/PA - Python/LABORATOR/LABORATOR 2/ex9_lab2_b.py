k = int(input("cheia este "))
s = input("sirul este ")
decriptat = ""
for i in s:
    if i.isalpha():
        if i.islower():
            if ord(i) >= (97+k):
                decriptat = decriptat + chr(ord(i) - k)
            else:
                decriptat = decriptat + chr(-97 + ord(i) + 122 - k + 1)
        elif i.isupper():
            if ord(i) >= (65 + k):
                decriptat = decriptat + chr(ord(i) - k)
            else:
                decriptat = decriptat + chr(-65 + ord(i) + 90 - k + 1)
    else:
        decriptat = decriptat + i
print("sirul decriptat este ", decriptat)