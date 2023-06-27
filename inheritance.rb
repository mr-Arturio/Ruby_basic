class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal #the `<` symbol to signify that the GoodDog class is inheriting from the Animal class
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak # we're overriding the speak method in the Animal
    "#{self.name} says arf!"
  end
end

class Cat < Animal # `<` inherutance symbol
  def speak # override speak
    super + " from Cat class" # invoke speack methid form the superclass "Animal"
  end
end

sparky = GoodDog.new("Sparky")
paws = Cat.new
puts sparky.speak           # => Sparky says arf! ##overwritten
puts paws.speak             # => Hello!  ##inherited