#date and time in python is a package used to know time and date etc
import datetime
print(dir(datetime))
print(dir(datetime.datetime))
print("#"*30)

#print current date and time
print(datetime.datetime.now)
print("#"*30)

#current year
print(datetime.datetime.year)
print("#"*30)

#current month
print(datetime.datetime.month)
print("#"*30)

#current day
print(datetime.datetime.day)
print("#"*30)

#tart and end of date
print(datetime.datetime.min)
print(datetime.datetime.max)
print("#"*30)

#current time
print(datetime.datetime.now().time())
print("#"*30)

#current hour
print(datetime.datetime.now().time().hour)
print("#"*30)

print(datetime.datetime.now().time().minute)
print("#"*30)

print(datetime.datetime.now().time().second)
print("#"*30)


print(datetime.time.min)
print(datetime.time.max)

#specific date
print(datetime.datetime(2026, 6, 10))

#small trick practic 
x = datetime.datetime(2006, 10, 5, 3, 15)
y = datetime.datetime.now()

print(f"my birth date is: {x}")
print(f"current date is: {y}")
print(f"my age now is: {(y - x). days} Days.")
print("=" * 20)
#in datetime we got a func strftime() that returns time formated in a string form
birth = datetime.datetime(2006, 10, 5, 3, 15)
print(birth)
print(birth.strftime("%D"))
print("=" * 20)
print(birth.strftime("%A / %B / %y")) #simple tricks 
print("=" * 20) 