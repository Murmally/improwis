class Course < ApplicationRecord
  belongs_to :garant
  belongs_to :executive
  has_many :terms
  has_many :course_registrations
end
