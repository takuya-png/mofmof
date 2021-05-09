class CreateEstates < ActiveRecord::Migration[5.2]
  def change
    create_table :estates do |t|
      t.string :name
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end
