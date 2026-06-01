#we can make our own Error by using exception()
#example: in a case of everything is right but we wanna see an Error even if it's all right 

# x = -10
# if x < 0:
    # print(f"=====the number {x} is less than 0")
    # 
# else:
    # print(f"======{x} is a fine number") #this code is correct and fine but if we wanna put an Error for a part of it
    #we can just do    
    #example:
# x = -10
# if x < 0:
#     raise Exception(f"====the number {x} is less than 0") #so in this case if x < 0 we ll our print as an Error
#     #everything we put here not visual cuz it's after an Error
# else:
#     print(f"==={x} is a fine number")
    
#===================================================
# s = "a7th"
# m = 17
# if s != m:
#     raise ValueError(f"only numbers expected")
# else:
#     print(f"the both values {s} and {m} are fine")
    
#==============================================================
#try and except
#we use try to try the code and test errors
#except() handles Errors
try:
    number = int(input("write your age:"))
except ValueError:
   print("======Value Error: that's not an integer") 
#=> we can turn this case into Error also
else:
    print("======good this integer from else")
finally:
    print("======print from finally whatever happens")

#================================================================
file = None
tries = 5
while tries > 0:
    try: #try to open file
        print("enter the file name with absulote pass")
        print(f"===={tries} tries left")
        print("example: /home/a7th/a7th-/solve/Pyth/1-practice/a7th.png")
        file_and_path = input("file name :")
        file = open(file_and_path, 'r')
        print("====gg w stream", file.read)
        break
    
    except FileNotFoundError:#for not foun Error
        print("==![File not found please make of its name]")
        tries -= 1
    except: #for all other Errorss
        print("Error happens")
    finally:
        if file is not None:
            file.close()
            print("====file closed")
else:
    print("!!!!all tries are done")