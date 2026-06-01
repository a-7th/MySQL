#[Iterable] contains data tha can be iterated upon
#examples(strs, lists, set, tuple, dict)


#[Itrator] object used to iterate over iterable using next() method return 1 element at a time
#we can generate itrerator from iterable when using iter() method
#for loop already calls iter() nethod on the iterable behind the scene 
#gives "stopiteration" if thers no next element

#iterable
str = "a7th" #iterable
print("="*20)
for x in str:
    print(x, end="")
print("")

print("="*20)

list = [ "a7th", 2, 3, 4] #iterable
for n in list:
    print(n, end=" ")
print("")
print("="*20)

#iterator
num = 2 #iterator
# num = 2.222 #iterator
# num = True #iterator
# num = False #iterator

#for m in num:
#    print(m, end=" ") #Error cuz we cant loop on a iterator

#we use iter() to loop on iterable using iterator
#so when we do a for loop on a iterable it uses iter() behind scenes
z = iter(list) #we turn our list into iterator so we can use it in next() later
print(next(z)) #returns a7th only if we call it again it ll return next element 
#so for loop each loop it calls next
#so 
for j in list:
    print(j, end="=")
print("\n")
print("#"*20)
#same as
for j in iter(list):
    print(j, end="=")
print("\n")