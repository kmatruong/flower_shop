class Product < ApplicationRecord
  belongs_to :category

  scope :product_items, ->{select :name, :id, :price, :detail}
end
