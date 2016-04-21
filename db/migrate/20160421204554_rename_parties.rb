class RenameParties < ActiveRecord::Migration
  def change
    rename_table :parties, :customers 
  end
end
