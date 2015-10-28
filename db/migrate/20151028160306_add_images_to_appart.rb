class AddImagesToAppart < ActiveRecord::Migration
  def change
  	change_table :apparts do |t|
    t.string :images1
    t.string :images2
    t.string :images3
    t.string :images4
	end
  end
end
