class Store < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :opening_hour, presence: true
  validates :closing_hour, presence: true
  validates :phone, presence: true

  has_many :product_stores, dependent: :destroy
  has_many :products, through: :product_stores
  has_many :orders, dependent: :destroy
end
