class RemovePartySizefromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :party_size
  end
end
