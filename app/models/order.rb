class Order < ApplicationRecord
  belongs_to :customer
  has_many :products, through: :orderitems
  has_many :orderitems
end
