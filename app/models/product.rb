class Product < ApplicationRecord
  # has_many :orderitems
  has_and_belongs_to_many :orders
end
