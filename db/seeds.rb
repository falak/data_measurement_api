# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create User
# User.create!(email: 'test_email@mail.com' , password: '123123123' , password_confirmation: '123123123')

# Creates Data
100000.times {
  Datum.create!(value: Random.rand(0.1...2.9), threshold: Random.rand(4))
}
