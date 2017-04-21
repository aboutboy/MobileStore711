class Product < ApplicationRecord

  has_many :product_stores
  has_many :stores, through: :product_stores
  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_products

  validates :price, presence: true, numericality: {greater_than: 0, message: "Precio debe ser mayor a 0."}
end
