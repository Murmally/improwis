class Lecturer < ApplicationRecord
  belongs_to :garant
  has_many :terms
  has_many :scores
end
