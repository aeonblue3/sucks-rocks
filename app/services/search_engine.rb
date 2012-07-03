class SearchEngine
  def self.count_results(query)
    Google::Search::Web.new(:query => query).get_response.estimated_count
  end
end
