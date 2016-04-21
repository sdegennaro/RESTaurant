class AddNameColumntoWaitstaffs < ActiveRecord::Migration
  def change
    add_column :waitstaffs, :name, :string

  end
end
