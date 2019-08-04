class Application < ApplicationRecord
  has_many :preferences, foreign_key: "application_id"
  has_many :users, through: :preferences
end
