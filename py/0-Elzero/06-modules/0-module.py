#  modules in Python modules r like headers + implementation in C
## import main module

 import module1
 print(module1)
 print(f"our module can handle: {module1.func()}") #so here we used a function [func] tha is inside our module [x]

#====================

#to display all funcs those r inside our x module we can do something like
import module2
print(dir(random)) #dir() returns our module content

#======================
#to import one or two funcs from module we can do:
from module3 import func1
print(f"randome from our func1: {func1(1,1)}")
#here we'r importing the func only not the whole module

#to import more than module or more than func we just do
# import x, y, z
# from x import * => for all funcs from our module
