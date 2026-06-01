name = input("Your Name: ").strip().capitalize()
email = input("Your Email: ").strip()
usrname = email[:email.index('@')] #slice frome the index 0 until the selected sep inside the index()
website = email[email.index('@') + 1:] #same shit but this time from the selected sep inside index() to the end of variable
print(f"===Welcom back Mr/Mrs [{name}]===\n -check your Email: [{email}] / !So you can recover your informations\n -What do you think of the user that we gived you: [{usrname}]\n -Even the website name we choose for you Mr/Mrs {name} is: [{website}]\n -->you can change any of your information by pressing [1] and [2] to continue [0] to Quit")