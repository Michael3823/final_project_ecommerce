class Product < ApplicationRecord
    belongs_to :category
    validates :name,:description,:price, :quantity_available, presence:true
    validates :price, :quantity_available, numericality:true

end
