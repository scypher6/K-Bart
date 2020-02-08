class Item < ApplicationRecord
  # belongs_to :buyer, class_name: 'User'
  # belongs_to :seller, class_name: 'User'

  belongs_to :buyer, foreign_key: :buyer_id, class_name: 'User'
  # belongs_to :buyer, through: :buyer

  belongs_to :seller,foreign_key: :seller_id, class_name: 'User'
  # belongs_to :seller, through: :seller


  belongs_to :category
end
