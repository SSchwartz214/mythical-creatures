class Ogre
  attr_reader :name,
              :home,
              :swings,
              :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
    @hit = true
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_ogre
    if human.notices_ogre?
      swing_at(human) if @hit
      @hit = !@hit
    end
    if @swings >= 2
      human.knock_him_out
    end
  end

  def swing_at(human)
      @swings += 1
  end

  def apologize(human)
    !human.knocked_out?
  end

end

class Human
  attr_reader :name,
              :encounter_counter,
              :knocked_out

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @knocked_out = false
  end

  def encounter_ogre
    @encounter_counter += 1
  end

  def notices_ogre?
    @encounter_counter > 2
  end

  def knocked_out?
    @knocked_out
  end

  def knock_him_out
    @knocked_out = true
  end

end
