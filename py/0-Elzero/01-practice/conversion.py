#str() to convert any type to string
a = 1.8
print(type(a))
print(type(str(a)))
print('-' * 5)

#list() to turn any type to list
b = [2, 3, 5] #list
b1 = {2, 3, 5} #set
print(tuple(b))
print(type(tuple(b)))
print(tuple(b1))
print(type(list(b1)))
print('-' * 5)
#list() to turn any type to list
b = (2, 3, 5) #tuple
b1 = {2, 3, 5} #set
print(list(b))
print(type(list(b)))
print(list(b1))
print(type(list(b1)))
print("=" * 10)
#same thing for set() 
b = (2, 3, 5) #tuple
b1 = [2, 3, 5] #list
print(set(b))
print(type(set(b)))
print(set(b1))
print(type(set(b1)))
print("=" * 10)
#for dicts we need some edits to turn other types into a dict 
#-tuple
b  = ((1, 7), (2, 3), (6, 7), (8, 9)) #we need tuples inside our tuple so we can turn it into a dict
print(dict(b))
print((type(dict(b))))
#-list
c = [[1, 7], [2, 3], [6, 8], [8, 9]]
print(dict(c))
print((type(dict(c))))
#we can't turn a set into dict 