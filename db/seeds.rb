# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "faker"

Floaty.destroy_all

user1 = User.new(first_name: "Daria", last_name: "Gortchacow", email: "daria@gmail.com", password: "123456")
user2 = User.new(first_name: "Joao", last_name: "Mateus", email: "joao@gmail.com", password: "123456")
user3 = User.new(first_name: "Patriz", last_name: "Gonzalez", email: "patriz@gmail.com", password: "123456")
user4 = User.new(first_name: "Samuel", last_name: "Howard", email: "samuelt@gmail.com", password: "123456")
10.times do
  floaty = Floaty.new(Faker::Title.name, Faker::Category.color_name, Faker::Details.invalid, Faker::User_id.invalid, Faker::Price.number, Faker::City.capital_city, Faker::Address.street_name)
  floaty.save!
end
