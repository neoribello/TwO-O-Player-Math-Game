class Player
  attr_reader :name
  attr_accessor :turn, :lives
 
  # Initializes the name and how many lives
  def initialize(name)
    @name = name
    @lives = 3
    @turn = false
  end

  def removes_life
    @lives -= 1
  end

end

# p = Player.new('Player 1')
# puts p.name