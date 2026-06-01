class Food:  # Base Class

  def __init__(self, name, price):

    self.name = name

    self.price = price

    print(f"{self.name} Is Created From Base Class")

  def eat(self):

    print("Eat Method From Base Class")

class Apple(Food):  # Derived Class we put base class inside derived class so we can inherate it's methods and properties

  def __init__(self, name, price, amount):

    # Food.__init__(self, name)  # Create Instance From Base Class

    super().__init__(name, price)

    self.amount = amount

    print(f"{self.name} Is Created From Derived Class And Price Is {self.price} And Amount Is {self.amount}")

  def get_from_tree(self):

      print("Get From Tree From Derived Class")

# food_one = Food("Pizza")
food_two = Apple("Pizza", 150, 500)
food_two.eat()
food_two.get_from_tree()
#---we use inhertance for:
#reuse code
#avoid repetition
#create related classes easily
#one child class can inheritace more than 1 base class
#more than one child class can inheritace a base class
#a child class can inheritas another child class that inherates a base class
