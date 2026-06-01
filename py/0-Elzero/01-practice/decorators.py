#a Dercorator takes our func and edit on it

def dec1(func):
    def nest(): #any name it's just for decoration
        print("before") #msg from decoration
        func() #execute function
        print("after ") #msg from decoration
    return(nest) #return all date

def hello():
    print("hello")
print("="*20)    

afterdecoration = dec1(hello)
print(afterdecoration) #instead of doing this we can do
print("=" * 8)

@dec1
def hallo():
    print("hallo")
hallo()
print("="*20)

#without decoration
def pipi():
    print("pipi")
pipi()
print("o"*20)

#=======================
#advance func with params
# @dec1
# def sum(a, b):
#     print(a + b)
# sum(1, 3) #=> Error cuz our dec expect one param so we need to

#if we use decorator noraml way it wont work cuz we got params this time
#so we need to edit on the func inside decorator

def dec2(func):
    def nest(a, b): #any name it's just for decoration
        print("before") #msg from decoration
        func(a, b) #execute function
        print("after ") #msg from decoration
    return(nest) #return all date

@dec2
def sum(a, b):
    print(a + b)
sum(1, 3)

#! we can use more than 1 decorator on a func
#@dec
#@dec2
#def func:
#   return("blabla")

#advance practice

def dec3(func):
    def nest(*nmbrs):
        for nmbr in nmbrs:
            if nmbr < 0:
                print("one number at least is negative")
        func(*nmbrs)
    return nest

@dec3
def sum(x, c, v, b):
    print(x+c+v+b)
sum(4, 8, 7, 9) #for unexpected numbr of elements we can use * packaging
print("="*20)

#+ to loop on all elements we add a for that's it 

#speed test example
from time import time 
def speedtest(fun):
    def wrapper():
        start = time()
        fun()
        end = time()
        print(f"function running time is: {end - start}")
    return wrapper

@speedtest
def bigloop():
    for nmbr in range(1, 20000):
        print(nmbr)
bigloop()

#=>why the hell we use decorator
#+to edit on to many functions at the same time instead of editing on m 1 by 1