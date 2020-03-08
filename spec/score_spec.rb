require 'score'

RSpec.describe Score, "#calculate" do
  context "with no additions" do
    it "returns 0" do
      score = Score.new
      expect(score.calculate).to eq 0
    end
  end

  context "with_apples" do
    it "calculates points based on the apples given" do
      score = Score.new
      score.with_apples(1)
      expect(score.calculate).to eq 2
    end
  end

  context "with_cheese" do
    it "calculates points based on the cheese given" do
      score = Score.new
      score.with_cheese(1)
      expect(score.calculate).to eq 3
    end
  end

  context "with_bread" do
    it "calculates points based on the bread given" do
      score = Score.new
      score.with_bread(1)
      expect(score.calculate).to eq 3
    end
  end

  context "with_chicken" do
    it "calculates points based on the chicken given" do
      score = Score.new
      score.with_chicken(1)
      expect(score.calculate).to eq 4
    end
  end

  context "with both cheese, apples, and bread" do
    it "calculates the score given both" do
      score = Score.new

      score.with_cheese(1)
           .with_apples(1)
           .with_bread(1)

      expect(score.calculate).to eq 8
    end
  end
end
