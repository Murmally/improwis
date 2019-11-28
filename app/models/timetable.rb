class Timetable < ApplicationRecord
  belongs_to :term
  belongs_to :student
end
