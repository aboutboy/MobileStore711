class OrderProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order

  module Json
    LIST = {
        include:{
            product:{

            }
        }
    }

    SHOW = {
        include:{
            product:{

            }
        }
    }
  end

  validates :amount, presence: true, numericality: {greater_than: 0, message: 'Solo números positivos', only_integer: true}

end
