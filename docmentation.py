#Documentation to document a function subject or goal r something like that 
#a documentation is not a comment

def pipi(x):
    '''this func to pipi luvly people'''
    print("pipi luvs {x}")
pipi("a7th")
print("="*20)
print(dir(pipi)) #we ll see something like __doc__ this the doc we put up there
print("="*20)
print(pipi.__doc__) #so we ll get=> '''this func to pipi luvly people'''
print("="*20)
#we can use help()
help(pipi) #so we ll get inside help()=> '''this func to pipi luvly people'''