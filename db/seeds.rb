# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Création des utilisateurs
10.times do
  rand_age = rand(15..30)
  users = User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 5),
    email: Faker::Internet.free_email,
    age: User.find(rand_age),
  )
end

#Création de villes
10.times do
  cities = City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
  )
end