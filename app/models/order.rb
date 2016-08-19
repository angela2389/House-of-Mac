class Order < ApplicationRecord
  belongs_to :customer
  # has_many :products, through: :orderitems
  has_many :orderitems
  has_and_belongs_to_many :products
end
