class Car
  # wheels # color(s) # make # model
  attr_accessor :color, :year, :make, :model
  # attr_writer :color
  # attr_reader :color

  def initialize(color:, year:, make:, model:)
    @color = color
    @year = year
    @make = make
    @model = model
  end

  def start
    puts "#{ color } car goes VROOM!!!!!"
  end

  # def color=(color)
  #   @color = color
  # end

  # def color
  #   @color
  # end

end

