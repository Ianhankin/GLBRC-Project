class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :description
      t.string :color
      t.boolean :default
      t.string :link

      t.timestamps
    end
  end
end
