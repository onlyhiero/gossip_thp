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

5.times do
	city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end


10.times do
	user = User.create!(first_name: Faker::Pokemon.name, last_name: Faker::StarTrek.specie, description: Faker::Hobbit.quote, age: rand(18..99), city_id: City.ids.sample)
	user.email = user.first_name.downcase + "." + user.last_name.downcase + "@email.com"
	user.save
end


