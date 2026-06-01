
# Instance Attributes: Instance Attributes Defined Inside The Constructor
#===========================================================

#attributes
class Member:
  def __init__(self, first_name, middle_name, last_name):
    self.fname = first_name #attribute1
    self.mname = middle_name #attribute2
    self.lname = last_name #attribute3

member_one = Member("Osama", "Mohamed", "Elsayed")
member_two = Member("Ahmed", "Ali", "Mahmoud")
member_three = Member("Mona", "Ali", "Mahmoud")

# print(dir(member_one)) we ll se the attribute we add [name]

print(member_one.fname, member_one.mname, member_one.lname)
print(member_two.fname)
print(member_three.fname)

# Instance Methods: Take Self Parameter Which Point To Instance Created From Class
# Instance Methods Can Have More Than One Parameter Like Any Function
# Instance Methods Can Freely Access Attributes And Methods On The Same Object
# Instance Methods Can Access The Class Itself
# ----------------------------------------------------------

#Methods

class Member:
  def __init__(self, first_name, middle_name, last_name, gender): #to initialize the attributes so we can use m later in methods
    self.fname = first_name
    self.mname = middle_name
    self.lname = last_name
    self.gender = gender

  def full_name(self):
    return f"{self.fname} {self.mname} {self.lname}"

  def name_with_title(self): #always we use self to access the attributes
    if self.gender == "Male":
      return f"Hello Mr {self.fname}"
    elif self.gender == "Female":
      return f"Hello Miss {self.fname}"
    else:
      return f"Hello {self.fname}"

  def get_all_info(self): #we can access different methods inside a class
    return f"{self.name_with_title()}, Your Full Name Is: {self.full_name()}"


member_one = Member("Osama", "Mohamed", "Elsayed", "Male")
member_two = Member("Ahmed", "Ali", "Mahmoud", "Male")
member_three = Member("Mona", "Ali", "Mahmoud", "Female")

# print(dir(member_one))

# print(member_one.fname, member_one.mname, member_one.lname)
# print(member_two.fname)
# print(member_three.fname)

# print(member_two.full_name())
# print(member_two.name_with_title())

print(member_one.get_all_info())