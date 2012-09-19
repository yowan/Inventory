class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :address
      t.string :name
      t.string :number
      t.string :jack
      t.string :floor
      t.string :room

      t.timestamps
    end
  end
end
