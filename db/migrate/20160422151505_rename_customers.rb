class RenameCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :seat_number
    rename_table :customers, :tables


  end
end
