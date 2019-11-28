class Executive < ApplicationRecord
  has_many :courses
  has_many :exec_rooms
end
