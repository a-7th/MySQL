#I we can't print a string between types 
#example:
name = "a7th"
age = 19
rank = 76

print("user: " + name) #works perfectly
#print("user: " + age + rank) #that's Error so we need to format the string so we can put it there
#so we use something like C 
print("username: %s \nuserage: %d \nuserrank: %d" %(name, age, rank))

#same as C
#%d = ints
#%s = strs
#%f = floats

# to control floating number
#same as C
print("user age is: %.2f" %age)

#we can also control str lean to print
print("username: %.3s" %name)

#II we can also format using this method in python
#example:
name = "a7th"
age = 19
rank = 76

print("user: {:s}" .format(name)) #works perfectly
print("\nusername: {:s} \nuserage: {:d} \nuserrank: {:d}" .format(name, age, rank))
#only in python
#"{:d}".format(x) = ints
#"{:s}" .format(y)= strs
#"{:f}" .format(z)= floats

# to control floating number
#same as C method
print("user age is: {:.2f}" .format(age))

#we can also control str lean to print
print("username: {:.3s}" .format(name))

#we can also control adding a sep to our paa 
#example
rank = 763563329

print("user: {:_d}" .format(rank))
print("user: {:,d}" .format(rank))

#rearrange items

a, b, c = 1, 2, 3

print("{} {} {}".format(a, b, c))
print("{2} {1} {0}".format(a, b, c))
print("{2:d} {1:f} {0:.2f}".format(a, b, c))

#3.16+ formaring version 
#same as javascript
print("username: {name} userage: {age} userrank: {rank}")
print(f"username: {name} userage: {age} userrank: {rank}")