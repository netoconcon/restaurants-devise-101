# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'limpando o db'

# User.destroy_all
# Restaurant.destroy_all

puts 'criando usuário'

user = User.create!(email: "ca@a.com", password: '123123')

10.times do
  restaurant = Restaurant.new(name: 'aaaa', address: 'rua tal')
  restaurant.user = user
  restaurant.save!
  puts "#{restaurant.name} criado"
end

puts 'seed pronto'