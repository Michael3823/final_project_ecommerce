require 'uri'

Faker::Name.unique.clear
Faker::UniqueGenerator.clear

Product.delete_all
Category.delete_all


1.times do 
     c = Category.create(name: "Gloves")
     
     number_of_products = 25

     number_of_products.times do
         product = c.products.create(
               name: Faker::Name.name,
               price: Faker::Commerce.price,
               description: "This #{Faker::Dessert.variety} has the flavor of #{Faker::Dessert.flavor} alcohol.",
               quantity_available: 60
          )
          query = URI.encode_www_form_component([product.name, c.name].join(","))

           downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")

               product.image.attach(io:       downloaded_image,

                       filename: "m-#{[product.name,
                                       c.name].join('-')}.jpg")

    sleep(1)
         

     end

     puts "Creating #{c.name}"
end
1.times do 
     c = Category.create(name: "Gear")
     
     number_of_products = 25

     number_of_products.times do
          product = c.products.create(
               name: Faker::Esport.player,
               price: Faker::Commerce.price,
               description: "This #{Faker::Dessert.variety} has the flavor of #{Faker::Dessert.flavor} alcohol.",
               quantity_available: 60
          )
          query = URI.encode_www_form_component([product.name, c.name].join(","))

           downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")

               product.image.attach(io:       downloaded_image,

                       filename: "m-#{[product.name,
                                       c.name].join('-')}.jpg")

    sleep(1)
     end

     puts "Creating #{c.name}"
end
1.times do 
     c = Category.create(name: "Punching Bags")
     
     number_of_products = 25

     number_of_products.times do
          product = c.products.create(
               name: Faker::Food.vegetables,
               price: Faker::Commerce.price,
               description: "This #{Faker::Dessert.variety} has the flavor of #{Faker::Dessert.flavor} alcohol.",
               quantity_available: 60
          )
          query = URI.encode_www_form_component([product.name, c.name].join(","))

           downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")

               product.image.attach(io:       downloaded_image,

                       filename: "m-#{[product.name,
                                       c.name].join('-')}.jpg")

    sleep(1)
     end

     puts "Creating #{c.name}"
end
1.times do 
     c = Category.create(name: "Shoes")
     
     number_of_products = 25

     number_of_products.times do
          product = c.products.create(
               name: Faker::Superhero.name,
               price: Faker::Commerce.price,
               description: "This #{Faker::Dessert.variety} has the flavor of #{Faker::Dessert.flavor} alcohol.",
               quantity_available: 60
          )
          query = URI.encode_www_form_component([product.name, c.name].join(","))

           downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")

               product.image.attach(io:       downloaded_image,

                       filename: "m-#{[product.name,
                                       c.name].join('-')}.jpg")

    sleep(1)
     end

     puts "Creating #{c.name}"
end
puts "Created #{Product.count} products!"AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?