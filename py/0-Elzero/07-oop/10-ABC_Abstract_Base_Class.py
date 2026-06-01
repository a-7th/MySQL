# An Abstract Base Class is a class that cannot be used directly.
# It is made to be inherited by other classes.
# 
# It contains abstract methods that child classes must implement. 
#===========================================================================

from abc import ABCMeta, abstractmethod # - abc module in Python Provides Infrastructure for Defining Custom Abstract Base Classes.
# ----------------------------------------- ABCMeta Class Is a Metaclass Used For Defining Abstract Base Class
class Programming(metaclass=ABCMeta):

  @abstractmethod
  def has_oop(self):

    pass

  @abstractmethod # - By Adding @absttractmethod Decorator on The Methods
  def has_name(self):

    pass

class Python(Programming):

  def has_oop(self):

    return "Yes"

class Pascal(Programming):

  def has_oop(self):

    return "No"

  def has_name(self):

    return "Pascal"

one = Pascal()

print(one.has_oop())
print(one.has_name())

#Important
# ABC → makes the class abstract
# @abstractmethod → forces child classes to create the method

#------Why ABC
#creates rules for child classes
#improves code structure
#useful in large projects