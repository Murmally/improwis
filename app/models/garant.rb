class Garant < ApplicationRecord
  has_many :lecturers
  has_many :courses
  has_many :course_registrations
end
