# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
# Restaurant.destroy_all if Rails.env == "development"
# category = ["chinese", "italian", "japanese", "french", "belgian"].
puts "Creating restaurants..."
dishoom = { name: "Dishoom", phone_number: "1234", category: "italian", address: "7 Boundary St, London E2 7JE" }
pizza_east =  { name: "Pizza East", phone_number: "4321", category: "japanese", address: "56A Shoreditch High St, London E1 6PQ" }
burger_east =  { name: "burger East", phone_number: "2222", category: "french", address: "56A Shoreditch High St, London E1 6PQ" }
pasta_east =  { name: "pasta East", phone_number: "3333", category: "belgian", address: "56A Shoreditch High St, London E1 6PQ" }
salad =  { name: "salad", phone_number: "4444", category: "chinese", address: "56A Shoreditch High St, London E1 6PQ" }

[ dishoom, pizza_east, burger_east, pasta_east, salad ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
