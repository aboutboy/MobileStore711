class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :payment_method, null: false
      t.timestamps
    end

    add_foreign_key :order_products, :orders
    add_foreign_key :order_stores, :orders
  end
end
