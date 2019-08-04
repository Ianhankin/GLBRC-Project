class User < ApplicationRecord
  before_save {self.name = name.downcase}
  validates :name, presence: true, length: {maximum: 100}, uniqueness: {case_sensitive: false}
  has_many :preferences, foreign_key: "user_id"
  has_many :applications, through: :preferences
  has_secure_password
end
