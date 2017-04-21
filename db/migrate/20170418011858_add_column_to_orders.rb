class AddColumnToOrders < ActiveRecord::Migration[5.0]
  def self.up
    add_column :orders, :user_id, :integer
    add_column :orders, :total_cost, :integer
    add_column :orders, :store_id, :integer
  end
  add_foreign_key :orders, :stores
  add_foreign_key :orders, :users
end
