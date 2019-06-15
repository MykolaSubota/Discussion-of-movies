class Movie < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploaders :movie_gallery, ImageUploader
  	serialize :movie_gallery, JSON
	has_many :impressions
	validates :title, :description, :genre, :image, :movie_gallery, :year, :nation, :director, :actors, presence: true
end
