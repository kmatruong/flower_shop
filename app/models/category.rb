class Category < ApplicationRecord
  has_many :products

  scope :category_items_menu, ->{select(:id, :name).limit Settings.limit}
  scope :category_items, ->{select :id, :name}
end
