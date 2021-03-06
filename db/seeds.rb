# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
15.times do
  rest = Restaurant.new(name: Faker::Restaurant.name , address: Faker::Address.full_address , category: %w(chinese italian japanese french belgian).sample)
  rest.save
  2.times do
    rev = Review.new(content: "review content random #{rand(100..500)}", rating: rand(1..5))
    rev.restaurant = rest
    rev.save!
  end
end


