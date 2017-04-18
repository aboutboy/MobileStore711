class ProductStore < ApplicationRecord
  belongs_to :store
  belongs_to :product


  validates :amount, presence: true, numericality: {greater_than: 0, message: 'Solo números positivos', only_integer: true}
end