# Ruby cheat-sheet

### Variables and Data Types:
* Variables are dynamically typed and don't require explicit type declaration (no ```const```, ```let```, ```var```).
* Common data types include integers, floats, strings, booleans, arrays, and hashes.
* snake_case for variable names.
* No ```;```.

``` Ruby
# Variable assignment
name = "John"
age = 25
is_valid = true

# Data types
integer = 10
float = 3.14
string = "Hello, World!"
boolean = false
array = [1, 2, 3, 4]
hash = { key1: "value1", key2: "value2" }

```

### Control Structures:
* Ruby provides if/else, unless, case, and loops for control flow.

```Ruby
# if/else statement
if condition
  # code executed when condition is true
else
  # code executed when condition is false
end

# unless statement (opposite of if)
unless condition
  # code executed when condition is false
else
  # code executed when condition is true
end

# case statement
case variable
when value1
  # code executed when variable matches value1
when value2
  # code executed when variable matches value2
else
  # code executed when variable doesn't match any values
end

# loops
while condition
  # code executed while condition is true
end

until condition
  # code executed until condition is true
end

for item in collection
  # code executed for each item in collection
end

collection.each do |item|
  # code executed for each item in collection
end
```

### Methods:
* Methods are defined using the ```def``` keyword and can have parameters and return values.

```Ruby
def say_hello(name)
  puts "Hello, #{name}!"
end

def add_numbers(a, b)
  return a + b
end

say_hello("John")  # Output: Hello, John!
result = add_numbers(5, 3)  # result = 8
```

### Inheritance and Method Overriding:
* Ruby supports inheritance, allowing classes to inherit behavior and attributes from parent classes.
* The ```super``` keyword is used to call a method in the superclass.

```Ruby
class Animal
  def speak
    puts "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super
    puts " from GoodDog class"
  end
end

sparky = GoodDog.new
sparky.speak  # Output: Hello! from GoodDog class
```

### Self and Instance Methods:
* The ```self``` keyword refers to the current object or class, depending on the context.
* It is used to call setter methods from within the class and for defining class methods.
* ```self``` within a class:
  * ```self```, inside of an instance method, references the instance (object) that called the method - the calling object.
  * ```self```, outside of an instance method, references the class and can be used to define class methods.

```Ruby
class MyCar
  attr_accessor :color
  attr_reader :year

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.class_method
    puts "This is a class method."
  end
end

car = MyCar.new
car.spray_paint("red")  # Output: Your new red paint job looks great!
MyCar.class_method  # Output: This is a class method.
```