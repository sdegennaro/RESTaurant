class AddForeignKeystoTables < ActiveRecord::Migration
  def change
    rename_column :tables, :waitstaffs_id, :waitstaff_id
    add_foreign_key :tables, :waitstaffs
  end
end
