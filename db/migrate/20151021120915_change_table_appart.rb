class ChangeTableAppart < ActiveRecord::Migration
  def change
    change_table :apparts do |t|
      t.belongs_to :user, index: true
    end
  end
end
