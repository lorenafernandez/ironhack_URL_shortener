class Link < ActiveRecord::Base
	validates :short_link, uniqueness: true

	def asign_short_link
		self.short_link = rand(0..999)
	end

	def how_many_times_has_been_visited
		self.number_of_visits += 1
	end

	def long_link_url
		"http://#{self.long_link}"
	end
end
