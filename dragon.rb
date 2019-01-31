class Dragon
  attr_reader :name,
              :color,
              :rider
              
  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @meal_count = 0
  end

  def hungry? 
    @meal_count < 3
  end

  def eat
    @meal_count += 1
  end
end