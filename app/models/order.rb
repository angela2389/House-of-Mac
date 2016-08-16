class Order < ApplicationRecord
  belongs_to :customer
  has_many :products, through :orderitem
  has_many :orderitems
end
