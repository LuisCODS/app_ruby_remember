# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Faker::Config.locale = 'pt-BR'
Faker::Config.locale = 'fr-CA'

5.times do |i|
  Friend.create([
                  { name:   Faker::Name.name,
                    adress: Faker::Address.street_name,
                    phone:  Faker::PhoneNumber.cell_phone,
                    email:  Faker::Internet.email
                  }
                ])
end

