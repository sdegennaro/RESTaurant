class AddDefaultValueIsPaidtoCustomer < ActiveRecord::Migration
  def change
    change_column :customers, :is_paid, :boolean, :default => false
  end
end
