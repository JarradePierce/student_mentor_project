class Availability < ApplicationRecord
  belongs_to :appointment, optional: true
  belongs_to :mentor
  has_many :possible_topics, through: :mentor, source: :skills
end
