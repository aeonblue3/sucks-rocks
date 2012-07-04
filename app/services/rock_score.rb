class RockScore
  NoScore = Class.new
  def self.for_term(term)
    positive = SearchEngine.count_results(%{"#{term} rocks"}).to_f
    negative = SearchEngine.count_results(%{"#{term} sucks"}).to_f
    score = 10 * positive / (positive + negative)
    p [term, positive, negative, score]
    score.nan? ? NoScore : score
  end
end
