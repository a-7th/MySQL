#regular expression used to edit on text select a specif type or more etc
#examples:

#====quantifiers
#*0 or more
#+1 or more
#?0 or 1
#{2} exactly 2
#{2, 5} between 2 and 5
#{2,} 2 or more
#(,5} up to 5

#====characters_classes
#[0-9] any number from 0 to 9
#[^0-9] anything else than 0 to 9
#[A-Z] any upercase alphabet
#[^A-Z] anything else than uppercase alphabets 
#[a-z] all lowercase alphabets
#[^a-z] anything else than lowercase alphaebts

#====assertions
#^ start of string
#$ end of string
#====match email
#[A-z0-9\.]+@[A-z0-9]+\.[A-z]+
#^[A-z0-9\.]+@[A-z0-9]+\.(com|net|org|info)$ nothing before or after the email

#====logical or and escaping
# | or
# \ escape special characters
# () separate groups
# (\d-|\d\)|\d) (\w+)
# (\d{3}) (\d{4}) (\d{3}|\(\d{3}\)) for phone number even if last part inside ()
# (https?://)(www\.)?(\w+)\.(net|org|com|info) fro websites if want nothing befroe and after it we can ust use ^[-]$

#practice using search() and findall()
#search() returns a string for a match and return a first match only
#findall() returns a list of all matches and empty list if no match
#Email pattern: [A-z0-9\.]+@[A-z0-9]+\.[A-z]+
import re
srch1 = re.search("[A-Z]", "PiPi")

srch2 = re.findall("[A-Z]", "PiPi")
print(srch1) #returns 1st match only
print(srch2) #returns all matchs

email1 = re.search(r"[A-z0-9\.]+@[A-z0-9]+\.[A-z]+", "a7th@gmail.com")

if email1:
    print("===valid email1")
    print(email1.span())
    print(email1.string)
    print(email1.group())
else:
    print("===!!make sure of ur email")

email2 = re.findall(r"[A-z0-9\.]+@[A-z0-9]+\.[A-z]+", "a7th@gmail.com")
lst = []
if email2 != []:

    print("===valid email2")
    print(lst.append(email2))
else:

    print("===!make sure of ur email")

for mail in lst:
    print(mail)

#========================
#some special funcs for reg expresions
#====split(pattern, string, maxsplit) it just slpits on the selected patterns
#====sub(pattrn, replace, string, replacecount) it replaces matches with what we want 
#====search.group or .groups to print a selected group or all groups