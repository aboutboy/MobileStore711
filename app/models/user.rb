class User < ApplicationRecord
  has_many :orders, dependent: :destroy

  module Json
    SHOW = {
                only:[:id,:name,:username]
    }
  end
end
