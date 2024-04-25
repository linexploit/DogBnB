# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

2.times do 
    cities = City.create(city_name: Faker::Address.city)
end
puts "2 cities ont été créees !"

20.times do
    dogsitters = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end
puts "20 dogsitters on été créés"

20.times do
    dogs = Dog.create(name: Faker::Creature::Dog.name, city_id: City.all.sample.id)
end
puts "20 doggos on été créés"

10.times do
    stroll = Stroll.create(date: Faker::Date.on_day_of_week_between(day: [:monday, :tuesday, :wednesday, :thursday, :friday], from: 1.year.ago, to: 1.year.from_now), dogsitter_id: Dogsitter.all.sample.id, dog_id: Dog.all.sample.id, city_id: City.all.sample.id)
end
puts "10 balades ont été crées !"
