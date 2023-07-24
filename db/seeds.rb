# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

5.times do
  User.create(
    email: Faker::Internet.email,
    password: "password"
  )
end

10.times do
  Event.create(
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.paragraph(sentence_count: 5),
    location: Faker::Address.city,
    date: Faker::Date.forward(days: 23),
    creator_id: rand(1..5)
  )
end