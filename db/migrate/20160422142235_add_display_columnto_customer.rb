class AddDisplayColumntoCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :to_display, :integer

  end
end
