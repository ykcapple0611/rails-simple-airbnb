# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
4.times do
  Flat.create!(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Company.catch_phrase,
    price_per_night: Faker::Commerce.price(range: 0..1000.0, as_string: true),
    number_of_guests: rand(0..4)
  )
end
