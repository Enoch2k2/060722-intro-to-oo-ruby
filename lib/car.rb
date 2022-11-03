class Car
  # wheels # color(s) # make # model
  attr_accessor :color, :year, :make, :model
  # attr_writer :color
  # attr_reader :color

  @@all = []
  
  def initialize(color:, year:, make:, model:)
    @color = color
    @year = year
    @make = make
    @model = model
  end

  def start
    puts "#{ @color } car goes VROOM!!!!!"
  end

  def color
    @color
  end

  def save
    @@all << self
  end

  def self.create(color:, year:, make:, model:)
    # # create a new instance
    car = self.new(color: color, year: year, make: make, model: model)
    # # save the instance
    car.save
    # # return the instance
    car

    # tap - where we take an object and put it into a block and then returns the object

    # self.new(
    #   color: color, year: year, make: make, model: model).tap {|obj| obj.save }
  end

  def self.print_car_models
    all.each { |car|
      puts car.model
    }
  end  

  def self.all
    @@all
  end

end



# new is unsaved (Car.new)
# create is saved (Car.create)