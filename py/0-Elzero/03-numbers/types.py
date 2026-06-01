#int
print(type(234))
print(type(-4))
print(type(34))
print(type(23))

#float
print(type(23.4))
print(type(-0.4))
print(type(1.34))
print(type(2.3))

#complex
x = 3 + 4j
print(type(x))
print("complex nuber: {}".format(x))
print("real part: {}".format(x.real))
print("imaginary part: {}".format(x.imag))

#!important:
#we can turn a int into float same for float to int 
#but we can turn complex number into ant other type
#example:

print(100)
print(float(100))
print(complex(100))

print(5.104)
print(int(5.104))
print(complex(5.104))

print(1 + 2j)
#print(float(1 + 2j))}=\
#                       |Error cant convert complex to other number types
#print(int(1 + 2j))  }=/ 