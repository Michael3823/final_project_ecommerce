require 'uri'

Faker::Name.unique.clear
Faker::UniqueGenerator.clear


Category.delete_all
Product.delete_all

4.times do 
     c = Category.create(name: Faker::Hobby.activity)
     
     number_of_products = 25

     number_of_products.times do
          c.products.create(
               name: Faker::Esport.player,
               price: Faker::Commerce.price,
               description: "This #{Faker::Dessert.variety} has the flavor of #{Faker::Dessert.flavor} alcohol.",
               quantity_available: 60
          )

     end

     puts "Creating #{c.name}"
end
puts "Created #{Product.count} products!"