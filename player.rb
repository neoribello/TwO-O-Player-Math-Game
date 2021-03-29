class Player
  attr_accessor :name, :lives

  # Initializes the name and how many lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def removes_life
    @lives = -1
  end

end

p = Player.new('Player 1')
puts p.name