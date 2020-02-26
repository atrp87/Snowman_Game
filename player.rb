class Player

  attr_accessor :lives
  attr_reader   :name

  def initialize(name, lives)
    @name   = name
    @lives  = lives
  end

  def remove_life()
    @lives -= 1
  end

end
