class Term < ApplicationRecord
  belongs_to :room
  belongs_to :course
  belongs_to :lecturer
  has_many :timetables
  has_many :scores
end
