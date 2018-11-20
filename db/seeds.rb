# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
categories = %w(chinese italian japanese french belgian)
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all restaurants"
Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create!(
    name: Faker::HeyArnold.location,
    address: Faker::Address.street_address,
    category: categories.sample)
end

puts "Created restaurants"
Review.destroy_all
puts "destorying all reviews"

5.times do
  review = Review.create!(
    content: Faker::Lorem.sentence(3),
    rating: rand(1..5),
    restaurant_id: rand(1..10)
    )
end


puts "Created all reviews"
puts "done!"
