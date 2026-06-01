s1 = "###pipi is angry and now pipi what about pipi###"

#ranodm functions
print(len(s1)) #string's length
print(s1.strip('#')) #remove selected element 
print(s1.rstrip('###')) #remove selected element from rightside only 
print(s1.lstrip('###'))#remove selected element from leftside only 
print(s1.title()) #capitalize first characters even if after number 
print(s1.capitalize()) #capitalize first characters in first word but not if it's after a number or special characters
print(s1.upper()) #turn elements to upercase
print(s1.lower()) #tunr elements to lowercase

s2 = "e"
#zfill()
print(s2.zfill(3)) #prints only 3 element and if we got less it fill the empth ones with zeros

s3 = "pipi is kinda getting sweetter"
s4 = "pipi-is-kinda-getting-sweetter"
#split()
print(s3.split()) #split can turn a string into list of strs
print(s4.split("-")) #remove a seperator
print(s4.split("-", 2)) #select the number of wrds we want to turn into a list
#rsplit()
print(s4.rsplit("-", 2)) #do same as split but start from right
#center()
print(s2.center(10, "7")) #puts our stirng between the selected sep the number of times we put
#count()
print(s1.count("pipi")) #counts the selected word in our string 
print(s1.count("pipi", 1 , len(s1))) #counts the selected word inside the selected len in our string (from index 1 to len(s1)'s index)
#swapcase()
print(s1.swapcase()) #swaps the letter form if it's upercase turn it to lowercase and same that way
#startswith
print(s1.startswith("p")) #checks if our string start with the selected element 
print(s1.startswith("#", 0, 20)) #checks if our string start with the selected element in the selected length 
#endswith
print(s1.endswith("p")) #checks if our string ends with the selected element 
print(s1.endswith("#")) #checks if our string ends with the selected element in the selected length

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#index(substring, start, end)
print(s1.index("pipi")) #returns the index that the selected substring start in
print(s1.index("pipi", 3, len(s1))) #returns the index that the selected substring start in selected length if not found error
#to avoid that error we can use find()
#find(substring, start, end)
print(s1.find("pipi")) #returns the index that the selected substring start in
print(s1.find("pipi", 4, len(s1))) #returns the index that the selected substring start in selected length
print(s1.find("pipi", 42, len(s1))) #so it doesnt found the selected substring it's jst returns -1
#rjust(width, fillchar)
print(s2.rjust(4, '@'))#it's add to the left of our string + width the fillchar
#ljust(width, fillchar)
print(s2.ljust(4, '@'))#it's add the fillchar to the right ofvour string + the width
#splitlines()
s5 = 'pipi \nis \ngetting \nsleepy'
print(s5.splitlines()) #turns a new lined string into one line string 
#expandtabs(num)
s6 = 'pipi\tis\tgetting\tsleepy'
print(s6.expandtabs(20))
#istitle() checks if our string looks like a title 
#isspace() checks if our string is a space
#islower() checks if our char is lowercase or not 
#isidentifier() checks if our string got no special characters
#isalfa() checks if our string got only alphabets
#isalnum() checks if our string got alphabets and numbers only
#replace(oldvalue, newvalue)
print(s2.replace(s2, s1)) #so replace s2 value with s1
#join(iterable)
list = ["pipi", "in", "school"]
print("-".join(list)) #so join turned our list into a string and between each list element puts the sep we choose