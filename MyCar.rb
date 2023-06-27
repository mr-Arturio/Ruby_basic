class MyCar
  attr_accessor :color #allows us to change and view the color of your car
  attr_reader :year #allows us to view, but not modify, the year of your car

  def self.gas_mileage(gallons, miles) # class method using `self`
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas pedal and accelarate #{number} kph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def info
    "My first car was #{@color} #{@model} of #{@year} year."
  end

  end

toyota = MyCar.new(2008, "black", "Toyota")
p toyota.info
toyota.speed_up(35)
toyota.current_speed
toyota.color = 'Yellow'
p toyota.info

MyCar.gas_mileage(13, 351)