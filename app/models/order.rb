class Order < ApplicationRecord
  belongs_to :category
  validates :tax,:total, presence:true
  has_many :order_products
  has_many :products, through: :order_products
  before_save :set_subtotal

  def subtotal
    order_products.collect{|order_product| order_product.valid? ? order_product.unit_price*order_product.quantity : 0}.sum
  end 

  private 
  def set_subtotal
    self[:subtotal] = subtotal
  end

end
