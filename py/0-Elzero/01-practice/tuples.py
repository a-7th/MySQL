#tuples is like list but we put it between (tuple) not [] as list we can even use it without these prantheses
#example:

tup1 = ("w", 'e', True, 'r', 8731, 't', 'u', 'io')
tup2 = "w", 'e', True, 'r', 8731, 't', 'u', 'io'
print(tup1)
print(tup2) #so we got same thing even without ()
print(type(tup1))
print(type(tup2)) #that's proves everything 

#same as lists tuple also can controle or access elements using a index
#example:
print(tup1[2]) #we pickd 2nd element using indexing

#we can put any type in a tuple same as lists

#and the operators used in lists and strs are used also in tuples 

#!{important} [the only different thing in tuples] tuples are opposite to lists in editing option we can't edit on a tuple 
#so we ll get a Error if we try to edit on a tuple

#to mix differnet tuples we can Do:
tup3 = tup1 + tup2
print(tup3)
tup4 = tup1 + tup2 + tup3 + ("dhj", "jdk", True)
print(tup4) #so like that we can mix or add to a tuple anything we want to

#we do:
str = "pipi"
l1 = ["fsge", True, 34,  "pdf"]
print(tup1 * 3)
print(str * 3)
print(l1 * 3) #so we can have our list as much as we want times 

#count(element) it counts how many times we got an element inside our tuple

#index(element) returns the element index in our tuple

#we can split our tuple on different variables doing this :
a, b, c, d, s, f, h, r = tup1
print(a)
print(b)
print(c)
print(d)
print(s)
print(f)
print(h)
print(r) #so we can split our tuple on different variables doing this 
