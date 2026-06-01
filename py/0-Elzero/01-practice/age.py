# #input age

age = int(input('Enter your birth year please: ').strip())
print(type((age)))
print("=" * 80)
#all times age

yrs = 2026 - age
mnths = yrs * 12
weeks = mnths * 4
days = yrs * 365
hrs = days * 24
minutes = hrs * 60
scnds = minutes * 60
print(f"here's yourexact age in each type of time:\n-------Year: {yrs}\n-------Months: {mnths}\n-------Weeks: {weeks}\n-------Days: {days}\n-------Houres: {hrs}\n-------Minutes: {minutes}\n-------Seconds: {scnds}")
