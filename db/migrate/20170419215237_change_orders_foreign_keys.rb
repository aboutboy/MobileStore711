class ChangeOrdersForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :stores,:orders
    add_foreign_key :users,:orders
    remove_foreign_key :orders,:stores
    remove_foreign_key :orders,:users
    remove_foreign_key :order_stores, :orders
  end
end
