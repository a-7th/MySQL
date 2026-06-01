#a function in pythone same as C take params return data etc 

def  x():
    print("pipi is angry")
x()

def  x():
    return("pipi is happy") 
print(x())

def  x():
    return(print("pipi is sleepy"))
x()
#same as C

#==========================================
def say_hello(*people): #unpacking arguments so we don't mind about the number of arguments our function can handle
    for name in people: #we use ** for dects 
        print(f"Hello [{name}]")
say_hello("sdf",  "ghj" , "sd", "fgh", "jksd", "fghjk", "dfg", "hjk")

#===========================================
def infos(name = "Adam", age = 18, country = "earth"): # we use default values so if the call miss any of the parames the function just use the default for it
    print(f"Hello: {name}\n Your Age: {age}\n Your Country: {country}")
infos("a7th", 19, "japan")
infos("othy", 29)
infos("athena", 18, "jamaica")

#============================================
# lambda function is a function that have no type it used for simple functins and def handle larger tasks lambda is one exprsion not stock of code 
# lambda type is function 
x = lambda name : f"Hello [{name}]"
print(x("a7th"))