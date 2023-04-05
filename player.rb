class Player
  attr_accessor :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def update_score
    @score += 1
  end

  def update_lives
    @lives += -1
  end
  
end