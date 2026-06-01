#oop => object orented programming
#in pytho is a programming style where we organize code using objects and classes
#=classe is like a blueprint, and and object is a real thing created frin that blueprint

###example:
class car:
    def __init__(self, brand, color):
        self.brand = brand
        self.color = color
    def drive(self):
        print(f"==[{self.brand}] car is driving")

#creating abjects
car1 = car("Toyota", "Red")
car2 = car("BMW", "Black")

car1.drive()

#============================================================
# This is a simple class definition (a blueprint for objects)
class Student:
    pass

#============================================================
# Creating an object (instance) from the Student class
class Student:
    pass

s1 = Student()  # s1 is an object of Student

#============================================================
# Constructor runs automatically when an object is created
class Student:
    def __init__(self, name):
        self.name = name  # storing name inside the object

s1 = Student("Ali")
print(s1.name)

#============================================================
# A method is a function inside a class that works with object data
class Student:
    def __init__(self, name):
        self.name = name

    def show(self):
        print("Student name is:", self.name)

s1 = Student("Sara")
s1.show()

#============================================================
# Encapsulation: hiding data using private variables (__)
class Bank:
    def __init__(self):
        self.__balance = 0  # private variable

    def deposit(self, amount):
        self.__balance += amount

    def show_balance(self):
        print("Balance:", self.__balance)

account = Bank()
account.deposit(100)
account.show_balance()

#============================================================
# Inheritance: Child class uses features of parent class
class Animal:
    def sound(self):
        print("Animal makes a sound")

class Dog(Animal):
    pass  # Dog inherits everything from Animal

d = Dog()
d.sound()

#===========================================================
# Polymorphism: same method name but different behavior
class Cat:
    def sound(self):
        print("Meow")

class Dog:
    def sound(self):
        print("Bark")

animals = [Cat(), Dog()]

for a in animals:
    a.sound()

#==========================================================
# Abstraction: hiding implementation details using abstract class
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass  # child classes must implement this

class Circle(Shape):
    def __init__(self, r):
        self.r = r

    def area(self):
        return 3.14 * self.r * self.r

c = Circle(5)
print(c.area())

#==========================================================
