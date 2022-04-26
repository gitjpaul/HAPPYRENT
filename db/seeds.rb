# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Car.destroy_all
User.destroy_all

user1 = User.create!(email: "paul.james@gmail.com", password: "123456", password_confirmation: "123456")
user2 = User.create!(email: "martin@gmail.com", password: "123456", password_confirmation: "123456")
user3 = User.create!(email: "lea@gmail.com", password: "123456", password_confirmation: "123456")
user4 = User.create!(email: "thomas@gmail.com", password: "123456", password_confirmation: "123456")

car1 = Car.create!(brand: "Triumph", model: "MK2", year_of_production: 1965, address: "12 rue sainte - 13001 Marseille", price_per_day: 100, user: user1)
car2 = Car.create!(brand: "Aston Martin", model: "DB5", year_of_production: 1963, address: "12 rue sainte - 13001 Marseille", price_per_day: 150, user: user1)
car3 = Car.create!(brand: "Pontiac", model: "Firebird", year_of_production: 1970, address: "24 rue paradis - 13001 Marseille", price_per_day: 100, user: user2)
car4 = Car.create!(brand: "Citroen", model: "2cv", year_of_production: 1975, address: "8 rue du commandant mages - 13001 Marseille", price_per_day: 50, user: user3)
car5 = Car.create!(brand: "Renault", model: "4L", year_of_production: 1979, address: "21 rue haxo - 13001 Marseille", price_per_day: 50, user: user4)
