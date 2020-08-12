# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Restaurant.destroy_all

5.times do
Restaurant.create(
  name: Faker::Restaurant.name,
  address: Faker::Address,
  phone_number: Faker::PhoneNumber,
  category: Restaurant::CATEGORY.sample
)
end
# we need to end the do
# reviews = Review.create([
#   {content: Faker::Restaurant.type}
#   {rating: rand(0..5)}
#   ])
# user creates restaurant review later on
