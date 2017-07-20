class Skill < ApplicationRecord
  has_and_belongs_to_many :mentors

  validates :skills, presence: true, uniqueness: true
end
