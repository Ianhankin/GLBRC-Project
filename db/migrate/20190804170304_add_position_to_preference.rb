class AddPositionToPreference < ActiveRecord::Migration[5.1]
  def change
    add_column :preferences, :position, :integer
  end
end
