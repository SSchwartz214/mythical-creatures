class Wizard
  attr_reader :name,
              :bearded,
              :rested

  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_count = 0
  end

  def bearded?
    name != 'Valerie'
  end

  def incantation(spell)
   "sudo #{spell}"
  end

  def rested? 
    @cast_count < 3
  end

  def cast 
    @cast_count += 1

    "MAGIC MISSLE!"
  end
end