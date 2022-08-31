class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :account
      t.string :name
      t.string :address
      t.float :price
      t.integer :room
      t.integer :bedrooms
      t.string :photo

      t.timestamps
    end
  end
end
