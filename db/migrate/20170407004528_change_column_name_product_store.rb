class ChangeColumnNameProductStore < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :product_stores, :product, :product_id
  end

end
