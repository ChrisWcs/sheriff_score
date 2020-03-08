class Goods
  def initialize(king, queen)
    @king = king
    @queen = queen
  end

  def calc_bonus(bonus)
    case bonus
    when :king
      @king
    when :queen
      @queen
    when :none
      0
    end
  end
end

class Apples < Goods
  def initialize
    super(20, 10)
  end
  def calculate(bonus, num_of_apples)
    score = num_of_apples * 2
    score += calc_bonus(bonus)
    score
  end
end

class Cheese < Goods
  def initialize
    super(15, 10)
  end
  def calculate(bonus, num_of_cheeses)
    score = num_of_cheeses * 3
    score += calc_bonus(bonus)
    score
  end
end

class Bread < Goods
  def initialize
    super(15, 10)
  end
  def calculate(bonus, num_of_bread)
    score = num_of_bread * 3
    score += calc_bonus(bonus)
    score
  end
end

class Chicken < Goods
  def initialize
    super(10, 5)
  end
  def calculate(bonus, num_of_chicken)
    score = num_of_chicken * 4
    score += calc_bonus(bonus)
    score
  end
end

class Score
  def initialize
    @score = 0
  end

  def calculate
    @score
  end

  def with_money(money)
    @score += money
    self
  end

  def with_apples(num_of_apples, bonus)
    @score += Apples.new.calculate(bonus, num_of_apples)
    self
  end

  def with_cheese(num_of_cheese, bonus)
    @score += Cheese.new.calculate(bonus, num_of_cheese)
    self
  end

  def with_bread(num_of_bread, bonus)
    @score += Bread.new.calculate(bonus, num_of_bread)
    self
  end

  def with_chicken(num_of_chicken, bonus)
    @score += Chicken.new.calculate(bonus, num_of_chicken)
    self
  end
end
