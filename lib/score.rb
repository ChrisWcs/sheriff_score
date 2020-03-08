class Score
  def initialize
    @score = 0
  end

  def calculate
    @score
  end

  def with_apples(num_of_apples, bonus)
    @score += num_of_apples * 2
    @score += 20 if bonus == :king
    @score += 10 if bonus == :queen
    self
  end

  def with_cheese(num_of_cheese, bonus)
    @score += num_of_cheese * 3
    @score += 15 if bonus == :king
    @score += 10 if bonus == :queen
    self
  end

  def with_bread(num_of_bread, bonus)
    @score += num_of_bread * 3
    @score += 15 if bonus == :king
    @score += 10 if bonus == :queen
    self
  end

  def with_chicken(num_of_chicken, bonus)
    @score += num_of_chicken * 4
    @score += 10 if bonus == :king
    @score += 5 if bonus == :queen
    self
  end
end
