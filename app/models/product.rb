class Product < ApplicationRecord
    has_one_attached :image
    belongs_to :category
    validates :name,:description,:price, :quantity_available, presence:true
    validates :price, :quantity_available, numericality:true

    def to_builder
    Jbuilder.new do |product|
      product.price stripe_price_id
      product.quantity_available 1
    end
  end

end
