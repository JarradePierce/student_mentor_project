class Mentor < ApplicationRecord
  has_many :availabilities
  has_many :appointments, through: :availabilities
  has_many :reviews, as: :feedbackable
  has_many :students, through: :appointments
  has_and_belongs_to_many :skills

  accepts_nested_attributes_for :availabilities
end
