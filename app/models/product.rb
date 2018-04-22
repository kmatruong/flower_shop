class Product < ApplicationRecord
  belongs_to :category
  has_many :feedbacks
  has_many :order_items
end
