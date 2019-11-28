class Room < ApplicationRecord
  has_many :equipment
  has_many :exec_rooms
end

