#hinting used to give hints to team members about funcs parts of code etc
def pipi(x)->str: #so -> is a hint that the func accepts a string
    print(f"pipi luvs {x}")
pipi("a7th")

def pipi(x, y)->int: #so -> is a hint that the func accepts int 

    print(f"{x} + {y} = {x+y}")

pipi(7, 10)
