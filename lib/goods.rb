class Goods
  def initialize(king, queen, value)
    @king = king
    @queen = queen
    @value = value
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

  def calculate(bonus, number)
    score = number * @value
    score += calc_bonus(bonus)
    score
  end
end
