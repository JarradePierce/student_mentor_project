class Appointment < ApplicationRecord
  has_many :availabilities
  belongs_to :student
  belongs_to :mentor
  belongs_to :topic, class_name: "Skill"
end
