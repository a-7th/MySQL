#append(element)

l = ["sfioi", 34, 2.22, "lkdsh"]
l.append("pipi") #adds new element to list
l.append(True) 
l.append(0.932) # the element can have any type we want to add
l.append(["la", 3.4, 33+3j, "bobo"]) #even another list
print(l)
print(l[7][3]) #to access the 2nd list elements 
print(l[7][3][3]) #to access the element elements inside the list 

#we can link more than one list using:
#extend()

l2 = ["jaaj", 33, False, "kaal"]
l.extend(l2)
print(l) #so like tha we linkd two differnet lists

#remove(element) it just removes a element fro our list
#sort() sorts our list elements from small numbers to huge ones
l3 = [1, 9876, 3234, 44532, 5, 6, 7, 8]
l3.sort(reverse = False)
print(l3)
l3.sort(reverse = True) #tha way we revese sorting 
print(l3)

#reverse() do reverse list elements whatever its type
l2.reverse() #so our list get reversed
print(l2)

#clear() clears our list elements
#copy() copys a list to another one 
#example
l4 = l2.copy()
print(l4)

l2.append(4567)
print(l2)
print(l4) #so l4 stays at is it the first copied l2 

#count(element) count how many times we got tha element in our list
#index(element) returns the index element from our list 
#insert(index, object) like append() but controles where to put tha element 
#pop(index) return the item that is in tha index

