# file manipulation same as C

#open("file", "mode")
#file = open("file.txt", "w")


# import os
# print(os.getcwd())  #main current working directory

# #directory for the opened file 
# print(os.path.dirname(os.path.abspath)__file__)

# os.remove("/home/a7th/a7th-/solve/Pyth/5-file_manipulatio/file.txt")) to remove file

# #print(os.path.abspath(__file__))

# we give permision to write and read and do write inside the file.txt and read its content as well 
file = open("/home/a7th/a7th-/solve/Pyth/5-file_manipulatio/file.txt", "w+")
file.write("=>[we r inside the file.txt]")
file.seek(0)
x = file.read()
print(x)
file.close()

#mthod II to open file 
#with do close automatically
with open("/home/a7th/a7th-/solve/Pyth/5-file_manipulatio/file.txt", "w+") as file:
    file.write("=>[we done it well]")
    file.seek(0)
    y = file.read()
    print(y)

# "w" → write only
# "r" → read only
# "a" → append only = write without deleting any content 
# "w+" → write + read
# "r+" → read + write without deleting old content