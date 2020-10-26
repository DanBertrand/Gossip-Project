# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Gossip.destroy_all
User.destroy_all

users = Array.new
gossips = Array.new

10.times do
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
	users << user
end
puts "10 Users has been created"


10.times do
	gossip = Gossip.create(author: Faker::Name.last_name, title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.sentence(word_count: 150), user: users.sample)
	gossips << gossip
end
puts "10 Gossips has been created"