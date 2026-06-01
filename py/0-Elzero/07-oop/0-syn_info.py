# class Name: #define class
#     Constructor => Do Instantiation [ Create Instance From A Class ]
#     Each Instance Is Separate Object
#     def __init__(self, other_data)
#         Body Of Function


class Member:

  def __init__(self): # __init__ Method Called Every Time You Create Object From Class

    print("A New Member Has Been Added")

member_one = Member()
member_two = Member()
member_three = Member()

print(member_one.__class__) #to know from what class we got tha object

my_dictionary = { #we use oop cuz in normal we can't calculate inside the dict but by using oop we can
  'name': "Osama",
  'age': 36,
  'monthly_salary': 5000,
  'yearly_salary': ''  # Something
}