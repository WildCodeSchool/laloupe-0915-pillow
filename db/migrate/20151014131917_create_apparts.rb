class CreateApparts < ActiveRecord::Migration
  def change
    create_table :apparts do |t|
      t.boolean :room_type
      t.string :property_type
      t.integer :accommodates
      t.string :city
      t.string :title
      t.integer :bedroom_nb
      t.integer :beds_nb
      t.float :price
      t.string :adress
      t.integer :zip_code
      t.string :country
      t.string :amenities
      t.string :images
      t.timestamps null: false
    end
  end
end
