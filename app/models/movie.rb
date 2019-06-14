class Movie < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :impressions
	validates :title, :description, :genre, presence: true

end
