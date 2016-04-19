class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_number
      t.integer :party_size
      t.boolean :is_paid
      t.references :waitstaffs
      t.timestamps null: false
    end
  end
end
