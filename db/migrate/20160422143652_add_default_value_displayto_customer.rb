class AddDefaultValueDisplaytoCustomer < ActiveRecord::Migration
  def change
    change_column :customers, :to_display, :integer, :default => 1

  end
end
