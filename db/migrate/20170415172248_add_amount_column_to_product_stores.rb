class AddAmountColumnToProductStores < ActiveRecord::Migration[5.0]
  def self.up
    add_column :product_stores, :amount, :integer
  end
end
