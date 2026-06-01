#dictionary is same as javascript contains key and value
dict1 = {"pipi" : "hungry",
        "comma" : 23,
        "gone" : 29,
        "comma" : 2 #so comma becomes not 23 anymore
        } #a dictionary looks like 
#the key can be immutable (num, str, tuple) can't be list
#b ut the value can any data type 
#the last value set to key is the supported one so if a key "x" : 12 and at another index we do "x" : 2 x becomes 2 not 12 anymore
print(dict1)
#dict are not ordered we access element using the key
print(dict1["pipi"]) #so we ll get pipi's value that is 'hungry'
#to print all dict keys we can do
print(dict1.keys())
print(dict1.values()) #for values only 
dict2 = {
        "C" : {
                "s1" : "memory",
                "s2" : "translating"
        },
        "C++" : {
                "s1" : "vectors",
                "s2" : "covering"
        }     
}
print(dict2)
print(dict2.keys) #we ll get the address
print(dict2.values) #same thing we ll get the address
#so to access element we can just do that 
print(dict2["C"])
print(dict2["C++"])
print(dict2["C"]["s1"])
print(dict2["C++"]["s1"])
print(len(dict2["C"])) #even length 

#to create dict from variables 
dict3 = {
        1 : dict1,
        2 : dict2
}
print(dict3) #so we ll get dict1 and dict2 in dict3 smoothly
print("=" * 118)
#=============================================================================
#dict functions

#clear() to clear dict 
dict1.clear()
print(dict1)

#update() update a dict to another
dict1.update(dict2)
print(dict1) #so 1st dict becomes same as the 2nd that last stays exactly how is it 

#copy() to copy a dict to any other variable

#setdefault(key) returns the key's value if founded if not adds it to our dict
print(dict1.setdefault("comma", "papa"))

#popitem() returns the last added item to our dict no randomly ussual way 

#items() returns all items each one in a tuple and all of m in a list so [(), ()]