class ProductStore < ApplicationRecord
  belongs_to :store
  belongs_to :product

  module Json
    LIST = {
        include: {
            product:{
                #only [:name]
            },
            store: {

            }
        }
    }
  end


  validates :amount, presence: true, numericality: {greater_than: 0, message: 'Solo números positivos', only_integer: true}
end