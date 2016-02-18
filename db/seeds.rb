# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
	{ name: 'Computers' },
	{ name: 'Televisions'},
	{ name: "Phones" },
	{ name: "Consoles"},
	{ name: "Video Games" },
	{ name: 'Kitchen Appliances' }
])

15.times do
Product.create({name: Faker::Commerce.product_name, price: Faker::Commerce.price, quantity: rand(5..100), description: Faker::Lorem.paragraph, brand: Faker::Company.name, category_id: rand(1..6), rating: rand(1..10)})
end
