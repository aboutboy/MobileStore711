class AddColumnToStores < ActiveRecord::Migration[5.0]
  def change
    add_column :stores, :phone, :string, limit:10
    # add_column :table_name, :column_name, :type, ?limit:2
  end
end
