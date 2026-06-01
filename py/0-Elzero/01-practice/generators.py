#a generator is a function that used [yield] instead of return as normal funcs
#A generator in Python is a special type of function that produces values one at a time instead of returning everything at once
#generator use the keyword [yield] instead of return

#normal func
def numbers():
    return [1, 2, 3]
#generator func
def numbers():
    yield 1
    yield 2
    yield 3

#test
def count():
    yield 1
    yield 2
    yield 3
x = count()
print(next(x))
print(next(x))
print(next(x))
print("="*20)

#visual idea of yield
#====== start → yield → pause
#====== resume → yield → pause
#====== resume → yield → pause
#====== done

#Why generators are useful:
#======They save memory because they do not store everything at once.
