# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding data... 🌱"

10.times do 
    Restaurant.create(name: Faker::Name.name, address: Faker::Address.full_address)
    Pizza.create(name: Faker::Name.name, ingredients: Faker::Food.ingredient)
end

puts "Restaurant_pizzas... 🌱"

10.times do
    name = Faker::Food.dish
    price = rand(1..40)
    pizza_id = rand(1..10)
    restaurant_id = rand(1..10)
    RestaurantPizza.create(name: name, price: price, pizza_id: pizza_id, restaurant_id: restaurant_id)
end

puts "✅ Done seeding data!"