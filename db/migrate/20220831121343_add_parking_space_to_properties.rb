class AddParkingSpaceToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :parking_space, :integer, default: 0
  end
end
