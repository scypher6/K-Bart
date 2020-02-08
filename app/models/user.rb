class User < ApplicationRecord
    has_many :bought_items, foreign_key: :buyer_id, class_name: 'Item'
    has_many :bought, through: :bought_items, source: :seller
  
    has_many :sold_items, foreign_key: :seller_id, class_name: 'Item'
    has_many :sold, through: :sold_items, source: :buyer
  
end
