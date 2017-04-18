class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :order_products do |t|
      t.integer :product_id, null: false
      t.integer :order_id, null: false
      t.integer :amount, null: false
      t.timestamps
    end
    add_foreign_key :order_products, :products
  end
end
