class CreateApparts < ActiveRecord::Migration
  def change
    create_table :apparts do |t|

      t.timestamps null: false
    end
  end
end
