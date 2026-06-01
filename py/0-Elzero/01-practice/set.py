#set in python is an unordered and not indexed collection of unique values

set1 = {"hi", "pipi", True, 345, 345}
print(set1)

#print(set1[0]) -> Error cuz set unordered and unindexed collection

#can't slicing a set
#print(set1{0:1}) -> Error can't slice a set

#set has only unnutable data types (nums, strs, tuples) list and dicts r not 
#set2 = {"pipi", 34, 3.3, True, [ 2, "hi", True]} #the list part is Error 
set3 = {"pipi", 34, 3.3, True, (2, "hi", True)} #so sets can contain only nums strs and tuples
#print(set2) Error
print(set3)

#elements are unique
set4 = {2, 3, 4, "ghg", "fgh", 2, 3, 2+2j, "ghg"}
print(set4) #so we ll get each element once even if we got twice or more and each time we run we ll different sort

#fnctions

#clear() clears all the set 

#union() we can use to mix more then one set we can even use the | to mix different sets

#add() to add new element only one 

#copy() copies a set to another one 

#remove() removes an element if doesnt found the element Error 
#descard() also removes an element but if doesnt found the element it's no Error

#pop() pick a random element cuz in sets no indexing 

#update() it clears a set and updaete with another set

#difference() returns the different numbers for 1st set !(only numbers)
#difference_update() pick the different numbers for 1st set and return m to the selected set

#entersection() returns any element if found in both sets
#entersection_update() same thing it stores each repeated element in both sets in one set

#symmetric_difference() returns the unrepeated elements for both sets controles even strs
#symmetric_difference_update() returns the unrepeated elements for both sets and update m to another set even strs

#superset() returns True if all 1st set elements are in 2nd set and false if not 

#isdisoint() returns True if none of both sets repeated and False if not