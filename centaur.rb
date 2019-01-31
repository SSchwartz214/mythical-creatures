class Centaur
  attr_reader :name,
              :breed,
              :cranky,
              :standing,
              :laying,
              :rested,
              :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @activity_count = 0
    @laying = false
    @rested = false
    @sick = false
  end

  def shoot
    phrase = "Twang!!!"

    @activity_count += 1

    if standing
      test_crankiness(phrase)
    else
      "NO!"
    end
  end

  def run 
    phrase = "Clop clop clop clop!!!"

    @activity_count += 1

    if standing
      test_crankiness(phrase)
    else
      "NO!"
    end
  end

  def cranky?
    @cranky 
  end

  def standing? 
    standing
  end

  def sleep
    @cranky = false
    @activity_count = 0

    if standing
      "NO!"
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    laying
  end

  def stand_up
    @standing = true
  end

  def rested? 
    rested
  end

  def drink
    if standing
     @rested = true
      if @rested
        @sick = true
      end
    else
      "NO!"
    end
  end

  def sick?
    sick
  end

  private

  def test_crankiness(phrase)
    if @activity_count > 2
      @cranky = true
      "NO!"
    else
      "#{phrase}"
    end
  end
end