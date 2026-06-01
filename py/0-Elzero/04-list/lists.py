#in python a list it's not a array but kinda like it can contain multiple types strs ints etc
#example:
l = ["pipi", 45, 0.3, True, "baka"]
print(l)
print(l[2])
print(l[-1])

print(l[1:3]) #prints from 1 < index < 3
print(l[::2]) #index increment by 2 so print 0 2 then 4th element starting from 0
l[2] = 0.4
print(l) #we can change list  elements 
l[0:3] = ["baa", "saa", "haa"]
print(l) # we can even change more than 1 element in our list 
l[0:3] = ["baa"]
print(l) # we can also change more than 1 element in our list by only one new element
