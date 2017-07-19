class Student < ApplicationRecord
  has_many :appointments
  has_many :mentors, through: :appointments
  has_many :ratings, as: :feedbackable, foreign_key: "rater_id"
  has_many :received_ratings, as: :feedbackable, foreign_key: "recipient_id"
end
