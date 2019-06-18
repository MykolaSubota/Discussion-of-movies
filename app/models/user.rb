class User < ApplicationRecord
	acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, length: { minimum: 5, maximum: 20 },
                                    format: { with: /\A[a-zA-Z0-9_\-]+\z/ },
                                    uniqueness: { case_sensitive: false }
  mount_uploader :avatar, AvatarUploader
  has_many :impressions
end
