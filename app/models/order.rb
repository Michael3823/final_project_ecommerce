class Order < ApplicationRecord
  belongs_to :category
  validates :tax,:total, presence:true
  has_many :order_products
  has_many :products, through: :order_products
end
