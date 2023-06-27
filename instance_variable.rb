class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n # @name = 'Sparky'
    @heigh = h
    @weight = w
  end

=begin  `attr_accessor :name` doing all the work
  def name # get_name. print out object name
    puts @name
  end

  def name=(n) # set_name=(name). change object name
    @name = n
  end
=end

  def speak
    puts "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n # self  indicating that we are invoking a method rather than creating local variables
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info # => Spartacus weighs 45 lbs and is 24 inches tall.
