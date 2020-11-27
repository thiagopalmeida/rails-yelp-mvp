# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the db..."

Restaurant.destroy_all

puts "db is clean"

puts "creating restaurants..."

30.times do
  restaurant = Restaurant.create(
                name: Faker::Restaurant.name,
                address: Faker::Address.street_address,
                phone_number: Faker::PhoneNumber.cell_phone,
                category: ["chinese", "italian", "japanese", "french", "belgian"].sample
                )

  puts "#{restaurant.id}-#{restaurant.name} was created"
end
