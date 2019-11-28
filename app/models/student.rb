class Student < ApplicationRecord
  has_many :course_registrations
  has_many :timetables
  has_many :scores
end
