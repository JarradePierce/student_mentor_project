class Mentor < ApplicationRecord
  has_secure_password
  has_many :availabilities
  has_many :appointments, through: :availabilities
  has_many :reviews, as: :feedbackable
  has_many :students, through: :appointments
  has_and_belongs_to_many :skills

  validates :username, :email, :password_digest, :phase, presence: true

  validates :username, uniqueness: true
end
