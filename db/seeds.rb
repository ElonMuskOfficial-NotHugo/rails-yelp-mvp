# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
wallys =  {name: "Wally's", address: "5 Newlands St, London", category: "french"}
pepporoni_place =  {name: "Pepporoni Place", address: "20 Hydepark St, London", category: "italian"}
noodle_king =  {name: "Noodle King", address: "52 Shoreditch High St, London", category: "japanese"}

[dishoom, pizza_east, wallys, pepporoni_place, noodle_king].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
