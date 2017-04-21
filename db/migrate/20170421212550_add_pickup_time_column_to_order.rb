class AddPickupTimeColumnToOrder < ActiveRecord::Migration[5.0]
  def self.up
    add_column :orders, :pickup_date, :datetime
  end
end
