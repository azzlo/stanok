class AddCoordsToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :latitude, :decimal, precision: 10, scale: 6
    add_column :clients, :longitude, :decimal, precision: 10, scale: 6
  end
end
