class AddLatitudeAndLongitudeToAppart < ActiveRecord::Migration
  def change
    add_column :apparts, :latitude, :float
    add_column :apparts, :longitude, :float
  end
end
