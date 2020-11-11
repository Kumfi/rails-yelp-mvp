# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0650381225", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0650381225", category: "japanese" }
east_street = { name: "31st East St", address: "45 Place St Claire, Annecy 7400", phone_number: "0650381225", category: "italian"}
bimbly = { name: "Bimbly", address: "7th Circle, Hell 666", phone_number: "0650381225", category: "french"}
squandarlo = { name: "Squandarlo Bumpito", address: "???", phone_number: "0650381225", category: "belgian" }


[ dishoom, pizza_east, east_street, bimbly, squandarlo ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"