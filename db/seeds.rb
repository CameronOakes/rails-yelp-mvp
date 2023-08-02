# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
types = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  type = types.sample()
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: type)
  restaurant.save
  puts "#{restaurant.name} saved"
end
