class Werewolf
  attr_reader :name,
              :location,
              :human,
              :wolf,
              :hungry,
              :victims

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @victims = []
  end

  def human?
    human
  end

  def change!
    @human = !human
    @wolf = !wolf
  end

  def wolf?
    wolf
  end

  def hungry?
    wolf && victims.count < 2
  end 

  def consume(victim)
    if wolf
      victims << victim
    end
    victim.status = :dead
  end 
end