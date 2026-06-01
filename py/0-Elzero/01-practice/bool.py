#bool same as C is [True] or [False]
#mustly used in if condition to take a deciscion
x = ""
print(x.isspace()) #False 

#True values
print(bool("pipi"))
print(bool(True))
print(bool(13))

#False values
print(bool(""))
print(bool(0))
print(bool(False))

#condition seps

#and
print("-" * 5)
print(1 <= 5 and 2 > 1 and 3 == 3) #True
print(0 < -1 and None and "") #False
#or
print(1 <= 5 or 2 > 1 or 3 == 3) #True
print(0 < -1 or None == 5 or "pipi" == "angry") #False

print(not 1) #False
print(not 0) #True