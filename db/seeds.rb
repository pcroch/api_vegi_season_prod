# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'admin@admin.admin', password: '123123' )

Product.create(name: 'Apple', kind: 'fruit', months_available: 'September', seasons_available: 'autumn', user_id: 1)
Product.create(name: 'Peer', kind: 'fruit', months_available: 'September', seasons_available: 'autumn', user_id: 1)
Product.create(name: 'Grape', kind: 'fruit', months_available: 'September', seasons_available: 'autumn', user_id: 1)
Product.create(name: 'Tomatoes', kind: 'vegetable', months_available: 'April', seasons_available: 'summer', user_id: 1)
Product.create(name: 'Brocoli', kind: 'vegetable', months_available: 'August', seasons_available: 'summer', user_id: 1)
Product.create(name: 'Cauliflower', kind: 'vegetable', months_available: 'September', seasons_available: 'autumn', user_id: 1)
