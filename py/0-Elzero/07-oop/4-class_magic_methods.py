# Everything in Python is An Object
# self.__class__ The class to which a class instance belongs
# ------------------------------------------------------

class Skill:

  def __init__(self): # __init__  Called Automatically When Instantiating Class

    self.skills = ["Html", "Css", "Js"]

  def __str__(self): # __str__   Gives a Human-Readable Output of the Object

    return f"This is My Skills => {self.skills}"

  def __len__(self): # __len__   Returns the Length of the Container
      #Called When We Use the Built-in len() Function on the Object

    return len(self.skills)

profile = Skill()
print(profile)
print(len(profile))

profile.skills.append("PHP")
profile.skills.append("MySQL")

print(len(profile))

print(profile.__class__)
my_string = "Osama"
print(type(my_string))
print(my_string.__class__)
print(dir(str))
print(str.upper(my_string)) #Magic methods are special methods with double underscores (__).
#----------------------------Python automatically calls them for special actions.
#----------------------------Magic methods make objects behave like built-in Python objects.