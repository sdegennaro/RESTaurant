class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :type
      t.decimal :price
      t.timestamps null: false
    end
  end
end
