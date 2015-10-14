class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.text :post

      t.timestamps null: false
    end
  end
end
