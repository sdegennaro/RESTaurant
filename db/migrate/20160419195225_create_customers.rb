class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :parties
      t.timestamps null: false
    end
  end
end
