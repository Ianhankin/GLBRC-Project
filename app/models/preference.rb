class Preference < ApplicationRecord
  belongs_to :user
  belongs_to :application
  acts_as_list scope: :application
  default_scope { order(position: :asc) }
end
