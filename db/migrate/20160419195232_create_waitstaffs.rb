class CreateWaitstaffs < ActiveRecord::Migration
  def change
    create_table :waitstaffs do |t|

      t.timestamps null: false
    end
  end
end
