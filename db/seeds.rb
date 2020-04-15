# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
  { username: "john", first_name: "John", last_name: "Doe", email: "john@example.com", password: "123456"},
  { username: "jan", first_name: "Jan", last_name: "JanJo", email: "jan@example.com", password: "123456"},
  { username: "jomn", first_name: "Jomn", last_name: "Domn", email: "jomn@example.com", password: "123456"},
])
