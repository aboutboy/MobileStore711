class CreateOrderStores < ActiveRecord::Migration[5.0]
  def change
    create_table :order_stores do |t|
      t.integer :store_id, null: false
      t.integer :order_id, null: false
      t.timestamps
    end

    add_foreign_key :order_stores, :stores
  end
end
