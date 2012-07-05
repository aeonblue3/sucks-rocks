require "spec_helper"

describe CachedScore do
  it "Remembers scores" do
    CachedScore.save_score("microsoft", 7.5)
    CachedScore.for_term("microsoft").should == 7.5
  end
  it "raises an exception if the term is not cached" do
    expect do
      CachedScore.for_term("microsoft")
    end.to raise_error(CachedScore::NoScore)
  end

  it "saves NoScores as nil" do
    CachedScore.save_score("microsoft", RockScore::NoScore)
    CachedScore.for_term("microsoft").should be_nil
  end
end
