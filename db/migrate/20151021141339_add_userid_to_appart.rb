class AddUseridToAppart < ActiveRecord::Migration
  def change

  	add_reference :apparts, :user, index: true
  end
end
