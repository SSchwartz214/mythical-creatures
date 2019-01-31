class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end
  
  def stare(victim)
    @statues << victim

    if @statues.count < 4
     victim.stone
    else
      freed_victim = statues.shift
      freed_victim.unstone
    end
  end
end

class Person
  attr_reader :name,
              :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def stone
    @stoned = true
  end

  def unstone
    @stoned = false
  end
end