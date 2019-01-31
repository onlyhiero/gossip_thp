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
Gossyp.destroy_all
Tag.destroy_all
Like.destroy_all
PrimaryComment.destroy_all
SecondaryComment.destroy_all

10.times do
	city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end


10.times do
	user = User.create!(first_name: Faker::Pokemon.name, last_name: Faker::StarTrek.specie, description: Faker::Hobbit.quote, age: rand(18..99), city_id: City.ids.sample)
	user.email = user.first_name.downcase + "." + user.last_name.downcase + "@email.com"
	user.save
end

20.times do
	gossyp = Gossyp.create!(title: Faker::StarWars.call_squadron, content: Faker::StarWars.wookiee_sentence, user_id: User.ids.sample)
end

10.times do
	tag = Tag.create!(title: Faker::StarWars.planet, gossyp_id: Gossyp.ids.sample)
end

20.times do
	like = Like.create!(user_id: User.ids.sample, gossyp_id: Gossyp.ids.sample)
end

10.times do
	private_message = PrivateMessage.create!(content: Faker::StarWars.quote, sender_id: User.ids.sample, recipient_id: User.ids.sample)
end

10.times do
	primary_comment = PrimaryComment.create!(content: Faker::Shakespeare.hamlet_quote, user_id: User.ids.sample, gossyp_id: Gossyp.ids.sample)
end

10.times do
	secondary_comment = SecondaryComment.create!(content: Faker::Shakespeare.romeo_and_juliet_quote, user_id: User.ids.sample, primary_comment_id: PrimaryComment.ids.sample)
end
