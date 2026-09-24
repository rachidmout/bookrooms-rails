# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Suppression des anciennes données..."

Booking.destroy_all
Room.destroy_all
Hotel.destroy_all

puts "Création des hôtels et des chambres..."

hotel_paris = Hotel.create!(
  name: "Hôtel Lumière",
  address: "12 rue de Rivoli, Paris"
)

hotel_nice = Hotel.create!(
  name: "Hôtel Méditerranée",
  address: "8 promenade des Anglais, Nice"
)

hotel_lyon = Hotel.create!(
  name: "Hôtel Bellecour",
  address: "20 place Bellecour, Lyon"
)

hotel_paris.rooms.create!(
  price_per_night: 69,
  capacity: 1
)

hotel_paris.rooms.create!(
  price_per_night: 99,
  capacity: 2
)

hotel_nice.rooms.create!(
  price_per_night: 79,
  capacity: 2
)

hotel_nice.rooms.create!(
  price_per_night: 119,
  capacity: 4
)

hotel_lyon.rooms.create!(
  price_per_night: 65,
  capacity: 1
)

hotel_lyon.rooms.create!(
  price_per_night: 89,
  capacity: 3
)

puts "#{Hotel.count} hôtels créés"
puts "#{Room.count} chambres créées"
