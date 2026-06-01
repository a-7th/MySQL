#===Decorato:
#Decorators are used to modify or extend a function without changing its original code.

class Member:

  def __init__(self, name, age):

    self.name = name

    self.age = age

  def say_hello(self):

    return f"Hello {self.name}"

  @property #Use method as attribute
  def age_in_days(self):

    return self.age * 365

one = Member("Ahmed", 40)

print(one.name)
print(one.age)
print(one.say_hello())
# print(one.age_in_days())

print(one.age_in_days)

#---Why Decorators
# reuse code
# add extra behavior
# keep code clean