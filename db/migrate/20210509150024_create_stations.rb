class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :name
      t.integer :on_foot
      t.integer :estate_id

      t.timestamps
    end
  end
end
