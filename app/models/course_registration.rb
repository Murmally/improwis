class CourseRegistration < ApplicationRecord
  belongs_to :student
  belongs_to :garant
  belongs_to :course
end
