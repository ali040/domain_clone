class ChangeColumnNameToProperties < ActiveRecord::Migration[7.0]
  def change
    rename_column :properties, :bedrooms, :bath_rooms
    rename_column :properties, :room, :rooms
  end
end
