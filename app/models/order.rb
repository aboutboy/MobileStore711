class Order < ApplicationRecord
  has_many :order_stores
  has_many :stores, through: :order_stores

  has_many :order_products
  has_many :products, through: :order_products
end
