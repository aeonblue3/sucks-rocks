require_relative "../../app/services/search_engine"

describe SearchEngine do
  it "counts results" do
    windows = SearchEngine.count_results("windows")
    beos = SearchEngine.count_results("beos")
    windows.should be > beos
  end
end
