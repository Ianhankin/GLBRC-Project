class User < ApplicationRecord
  has_many :preferences, foreign_key: "user_id"
  has_many :applications, through: :preferences
end
