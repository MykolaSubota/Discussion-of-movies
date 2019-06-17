class Impression < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  validates :body, presence: true, length: { minimum: 5 }, uniqueness: { case_sensitive: false }
end
