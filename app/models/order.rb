class Order < ApplicationRecord
  belongs_to :store
  belongs_to :user

  module Json
    LIST = {
        include:{
            store:{

            }
        }
    }
    end

  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products
end
