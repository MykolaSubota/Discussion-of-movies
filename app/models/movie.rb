class Movie < ApplicationRecord
	has_many :impressions
	validates :title, :description, presence: true

end
