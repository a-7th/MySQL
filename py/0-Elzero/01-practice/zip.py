#zip() return a zip object contains all objects
#zip() length is the len of lowest object

#example
list1 = [1, 2, 5, 6]
list2 = ["A", "B", "C"]
ultimatelist = zip(list1, list2)
for x in ultimatelist:
    print(x) #as we see the lowest len is controling the returned values

tuple1 = ["pipi", "is", "here", "but", "sleeped"]
dict1 = {"pipi":"sad", "popo":"happy", "pepe":"sleeped", "pkpk":"hungry", "psps":"gone"}
for w, x, y, z in zip(list1, list2, tuple1, dict1):
    print(f"list1 items =>[{w}]")
    print(f"list2 items =>[{x}]")
    print(f"tuple1 items =>[{y}]")
    print(f"dict1 items key=> [{z}]value=> dict1[{dict1[z]}]")
    print("-"*20)

