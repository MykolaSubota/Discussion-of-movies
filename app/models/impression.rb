class Impression < ApplicationRecord
<<<<<<< HEAD
  belongs_to :movie, optional: true
  
  validates :body, presence: true, length: { minimum: 1, maximum: 100 },
                                    uniqueness: { case_sensitive: false }

end
