require 'score'

RSpec.describe Score, "#calculate" do
  context "with no additions" do
    it "returns 0" do
      score = Score.new
      expect(score.calculate).to eq 0
    end
  end
end
