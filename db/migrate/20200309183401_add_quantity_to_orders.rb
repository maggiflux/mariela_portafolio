class AddQuantityToOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :quantity
    add_column :orders, :quantity, :integer, default: 0
  end
end
