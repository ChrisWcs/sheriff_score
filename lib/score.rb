class Score
  def initialize
    @score = 0
  end

  def calculate
    @score
  end

  def with_apples(num_of_apples)
    @score += num_of_apples * 2
    self
  end

  def with_cheese(num_of_cheese)
    @score += num_of_cheese * 3
    self
  end

  def with_bread(num_of_bread)
    @score += num_of_bread * 3
    self
  end

  def with_chicken(num_of_chicken)
    @score += num_of_chicken * 4
    self
  end
end
