class Student < ApplicationRecord
  has_secure_password
  
  has_many :appointments
  has_many :mentors, through: :appointments
  has_many :ratings, as: :feedbackable, foreign_key: "rater_id"
  has_many :received_ratings, as: :feedbackable, foreign_key: "recipient_id"

  validates :username, :email, :password_digest, :phase, presence: true

  validates :username, uniqueness: true
end
