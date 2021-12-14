class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :quantity,:total, presence:true

  def unit_price
    if persisted?
        self[:unit_price]
    else
        product.price
    end
  end

  def total
    unit_price*quantity
  end


  private

  def set_unit_price
      self[:unit_price] = unit_price 
  end

  def set_total
      self[:total] = total * quantity
  end
end
