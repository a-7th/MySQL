#      _____ _   _
#  __ |___  | |_| |__  
# / _` | / /| __| '_ \ 
#| (_| |/ / | |_| | | |
 #\__,_/_/   \__|_| |_|

import sys #we r just importing Python's built in Python [sys] module
sys.path.append(r"D:\pipi") #adding new folder path to Python's module search list 
print(sys.path) #by doing this we r just printing our module path in the system

import module
print(dir(module)) #module content
print(module.sum(10, 21)) #running func from module
print(module.sum(23, 32))
print(module.div(23, 32))
print(module.div(23, 32))
print("=" * 30)

#to avoid module name repeats we can do
import module as x
print(dir(x)) #x content same as module
print(x.sum(10, 21)) #running func from x like runs it from module
print(x.sum(23, 32))
print(x.div(23, 32))
print(x.div(23, 32))
print("=" * 30)

#same shit for rename functions we jst do
from module import sum as x
print(x(10, 21)) #running func from module like runs it from module
print(x(23, 32))
#print(module.div(23, 32))
#print(module.div(23, 32))
print("=" * 30)

#packages v modules
#a package is a collection of module files
#it's external so we can get it from internet
#using this command[pip --version] we can know our pip version
#pip is the python package manager so we can use to manage our packages
#a pip can install the package and its dependecies
#we can run [pip list] to know our packages list each package with its version
#to install a package we can run [pip install "package"] so we can get the package we want to 

import termcolor
import pyfiglet

print(dir(pyfiglet))
print(pyfiglet.figlet_format("a7th")) #func from our package1
print(termcolor.colored("a7th", color ="red")) #func from our package2

print(termcolor.colored(pyfiglet.figlet_format("a7th"), color ="red")) #mix func1 and func2