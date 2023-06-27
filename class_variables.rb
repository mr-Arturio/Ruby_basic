class GoodDog
  @@number_of_dogs = 0 # @@ variables for an entire class
  BREED = "Shepard" #constant variable start with Capital. the one that we don;t want to change

  def initialize
    @@number_of_dogs += 1 # gets called every time we instantiate a new object via the new method
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new # initialize called
dog2 = GoodDog.new # initialize called

puts GoodDog.total_number_of_dogs   # => 2