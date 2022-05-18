# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating 5 restaurants..."
dishoom = { name: "Dishoom", address: "Londres", phone_number: "+44 20 7420 9320", category: "chinese" }
bigmamma =  { name: "Big Mamma", address: "Paris", phone_number: "+331 86 47 78 34", category: "italian" }
etage =  { name: "L'étage", address: "Annecy", phone_number: "+334 50 51 03 28", category: "french" }
lapetitecour =  { name: "La petite cour", address: "Lille", phone_number: "+333 20 51 52 81", category: "french" }
fritas = { name: "La fritas", address: "Bruxelles", phone_number: "+32 2 539 44 54", category: "belgian" }

[ dishoom, bigmamma, etage, lapetitecour, fritas ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
