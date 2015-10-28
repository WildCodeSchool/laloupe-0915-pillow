class CreateCreateRoles < ActiveRecord::Migration
  def change
    create_table :create_roles do |t|

      t.timestamps null: false
    end
  end
end
