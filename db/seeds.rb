# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "faker"

Floaty.destroy_all

User.first_or_create!(first_name: "Daria", last_name: "Gortchacow", email: "daria@gmail.com", password: "123456")
User.first_or_create!(first_name: "Joao", last_name: "Mateus", email: "joao@gmail.com", password: "123456")
User.first_or_create!(first_name: "Patriz", last_name: "Gonzalez", email: "patriz@gmail.com", password: "123456")
User.first_or_create!(first_name: "Samuel", last_name: "Howard", email: "samuelt@gmail.com", password: "123456")

users = User.all

users.each do |user|
  5.times do
    Floaty.create!(
      title: Faker::Creature::Animal.name,
      category: Faker::Creature::Dog.breed,
      details: Faker::Creature::Dog.meme_phrase,
      price: rand(30..100),
      city: Faker::Address.city,
      address: Faker::Address.street_name,
      user: user
    )
  end
end
