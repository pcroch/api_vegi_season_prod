# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'admin@admin.admin', password: '123123' )


product1 = Product.create(name: 'Apple', kind: 'fruit', months_available: 'September', user: admin )
product2 = Product.create(name: 'Peer', kind: 'fruit', months_available: 'September', user: admin )
product3 = Product.create(name: 'Grape', kind: 'fruit', months_available: 'September', user: admin )
product4 = Product.create(name: 'Tomatoes', kind: 'vegetable', months_available: 'April', user: admin )
product5 = Product.create(name: 'Brocoli', kind: 'vegetable', months_available: 'August', user: admin )
product6 = Product.create(name: 'Brocoli', kind: 'vegetable', months_available: 'September', user: admin )

