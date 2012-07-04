class CachedScore < ActiveRecord::Base
	class NoScore < RuntimeError

	end

	attr_accessible :term, :score

	def self.save_score(term, score)
		create!(:term => term, :score => score)
	end

	def self.for_term(term)
		cached_score = find_by_term(term) or raise NoScore
		cached_score.score
	end
end
