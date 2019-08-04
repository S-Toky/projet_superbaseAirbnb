# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
User.destroy_all
City.destroy_all
Listing.destroy_all
Reservation.destroy_all

20.times do |i|
	User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number, description: Faker::Quote.famous_last_words)
end

10.times do
	City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

50.times do 
	Listing.create!(available_beds: Faker::Number.within(range:1..3), price: Faker::Commerce.price, description: Faker::Citation.famous_last_words, has_wifi: Faker::Boolean.boolean, welcome_message: "welcome")
end

5.times do
	Reservation.create!(start_date: Faker::Date.forward(days: 23), end_date: Faker::Date.backward(days: 14))
end