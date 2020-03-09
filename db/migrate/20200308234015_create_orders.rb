class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :payed, default: false
      t.integer :quantity, default: 0
      t.decimal :price, precision: 5, scale: 2
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
