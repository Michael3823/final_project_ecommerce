class Product < ApplicationRecord
    has_one_attached :image
    belongs_to :category
    validates :name,:description,:price, :quantity_available, presence:true
    validates :price, :quantity_available, numericality:true

end
