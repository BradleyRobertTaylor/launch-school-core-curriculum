# How do we create an object in Ruby? Give an example of the creation of an object.

class MyClass
end

object = MyClass.new


# We create an object by defining a class and instantiating it by using
# the .new method to create an instance, also known as an object.

# What is a module? What is its purpose? How do we use them with our classes? Create
# a module for the class you created in exercise 1 and include it properly.

# A module allows us to group reusable code into one place. We use modules in our
# classes by using the include method invocation, followed by the module name. Modules
# are also used as a namespace.

module Something
end

class MyClass
 include Something
end

object = MyClass.new

