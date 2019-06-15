class Movie < ApplicationRecord
	has_many :impressions
	validates :title, :description, :genre, presence: true

end
