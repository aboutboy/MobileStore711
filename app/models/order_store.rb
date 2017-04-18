class OrderStore < ApplicationRecord
  belongs_to :store
  belongs_to :order

end
