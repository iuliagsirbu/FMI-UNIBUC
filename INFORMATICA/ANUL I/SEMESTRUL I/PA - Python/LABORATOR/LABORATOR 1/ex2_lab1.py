#Nume: Sirbu Iulia-Georgiana, grupa 134
n = int(input("n="))
x = float(input("prima zi="))
y = float(input("a doua zi="))
max = abs(x-y)
for i in range(n-2):
    x = float(input("zi="))
    if abs(x-y) > max:
        max=abs(x-y)
    y=x
max = "{:.2f}".format(max)
print(max)