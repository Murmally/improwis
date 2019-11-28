class Score < ApplicationRecord
  belongs_to :term
  belongs_to :lecturer
  belongs_to :student
end
