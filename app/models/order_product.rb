class OrderProduct < ApplicationRecord
  belongs_to :product
  belongs_to :store

  validates :amount, presence: true, numericality: {greater_than: 0, message: 'Solo números positivos', only_integer: true}

end
