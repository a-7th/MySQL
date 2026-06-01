#all() true if all are true
#any() true if at least one is true
#bin() returns binary form
#id() address of item in memory
x = [76, 86, 0, 32]
if all(x):
    print("all elements are True")
else:
    print("at least one of elements is False")
    
print("=" * 30)

y = [72, 87, -0, 39]
if any(x):
    print("at least one element is True")
else:
    print("all elements are False")
    
print("=" * 30)

print(bin(id(x))) 

print("=" * 30)

print(id(x))

print("=" * 30)

#============================================================================
#sum() adding all variable items
#round() it rounds a variable to the clotest clean value
#range(start, end, step) like a range loop returns range  
#print() it just print

print(sum(x))

print("=" * 30)

print(round(len(x) + 1.8352, 2))

print("=" * 30)

print(list(range(2, 5, 1)))

print("=" * 30)

print("hi pipi how it's going")
print("hi", "pipi", "how", "it's", "going", sep = "\\") #some print tricks
print("hi", "pipi", "how", "it's", "going", end = "\\") #some print tricks

print("\n", "=" * 30)

#==========================================================================
# abs() returns the positive value
print(abs(9))
print(abs(0))
print(abs(-9)) #-> 9
print("=" * 30)

# pow() do power 
print(pow(2,2)) #if we add 3rd element (2,2,3)=> 2*2%3
print(pow(2,2, 3))
print("=" * 30)
# min() returns the minimum value in our variable
print(min(34, 5, -7, 6, 8, 9))
print(min("df", "A", "a", "s", "g")) #ascii
print("=" * 30)
# max() returns the maximum value in our variable
print(max(34, 5, -7, 6, 8, 9))
print(max("df", "A", "a", "s", "g")) #ascii
print("=" * 30)
# slice(start, end, step) like a for loop 
l = [34, 5, -7, 6, 8, 9]
print(l[:5]) #using noraml way
print(l[slice(5)]) #using slice
print(l[slice(2, 5, 2)])
print(l[slice(1, 5)])
print("=" * 30)

#=======================================================
#map(function, param)
def formatext(text):
    return f"- {text} -"

mytexts = ["adfg", "fdsg", "treas", "vxbgd"]

myformatedata = map(formatext, mytexts) #map() it like a loop that doesn’t return a -list- it returns a map object (an iterator)
print(myformatedata) #, like <map object at 0x...>. That’s why printing it shows the object, not the values
#an iterator is an index that start from something and keeps going next>next until nothing but it's not a index
for name in list(map(formatext, mytexts)): #to print using map we can turn it into list than loop on it and print it normal
    print(name)

print("=" * 30)

for name in list(map(lambda text: f"- {text} -", mytexts)): #using lambda function
    print(name)
print("=" * 30)
# cleaner code
# lazy processing (less memory if you don’t convert to a list right away)

#filter(func, iterator) same as map takes iterator and function runs the func on each element of the iterator same as map 
#but filter need a bool value [True] or [False] if True the filter takes the elements and use m on the func
#if False the elements despairs
def checknum(num):
    if num > 0:
        return num
number = [2, -23, 5, 34]
x = filter(checknum, number)
print(x) #returns <filter object at 0x7f6c81573820>
print("#" * 30)
for y in x:
    print(y)
#===========================================================
#filter doesnt accept false value
def checknum(num):
    if num == 0:
        return num
number = [2, -23, 0, 5, 0, 34]
x = filter(checknum, number)
print("#" * 30)
for y in x: #here nothing's happen
    print(f"pipi: {y}") #so in this verison we got nothing cuz num==0 is false and when filter got the false value it just returns nothing`


#reduce(func, iterator) it takes the 2 first elements and runs the returnd value on the 3rd element etc
from functools import reduce #to import reduce() cuz python doesn't know reduce
def sum(a, b):
    return a + b
x = [2, -23, 0, 5, 0, 34]

y = reduce(sum, x)
print(y) #we ll get [18] (((((2 - 23) + 0) + 5) + 0) + 34) => 18
print("="*30)

y = reduce(lambda a, b: a+b, x)
print(y)
print("="*30)

#========================
#enumerate(iterable, statrt = 0) so it works like a counter we give it starting number to count from 
skills  = ["jf", "ds", "kf", "slkjdlskfj"]
x = enumerate(skills, 5)
for y in x:
   print(y) # so we ll get our counter values before each iterate element from the selected one until end
print("-" * 30)
x = enumerate(skills, 5) #some tricks for enumerate()
for m, n in x:
    print(f"{m} - {n}")

#help() it helps when we dont know something about a func
print("=" * 30)
#print(help(enumerate))

#reversed() it reversed the iterable
print("-" * 30)
s = reversed(skills)
for r in s:
    print(r) #so we ll get our iterator elements reversed 
