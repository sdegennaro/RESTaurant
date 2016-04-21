class RenameType < ActiveRecord::Migration
  def change
      rename_column :food_items, :type, :category
  end
end
