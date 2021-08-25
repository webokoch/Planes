# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing database'
Plane.destroy_all

puts 'creating planes'
p1 = Plane.create(name: '737-800', manufactor: 'Boeing', engines: 2, passengers: 189,
              aircraft_type: 'Medium', range: 5436)
p2 = Plane.create(name: '340-300', manufactor: 'Airbus', engines: 4, passengers: 375,
              aircraft_type: "Heavy", range: 13500)
p3 = Plane.create(name: 'E190-E2', manufactor: 'Embraer', engines: 2, passengers: 114,
              aircraft_type: 'Medium', range: 5280)
p3 = Plane.create(name: 'A380-800', manufactor: 'Airbus', engines: 4, passengers: 868,
              aircraft_type: 'Super', range: 15200)

puts  'planes created'
