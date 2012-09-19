class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :resource_type
      t.string :make
      t.string :model
      t.datetime :purchesed_at
      t.string :serial_number
      t.string :user_name
      t.float :salvage_value
      t.integer :location_id

      t.timestamps
    end
  end
end
