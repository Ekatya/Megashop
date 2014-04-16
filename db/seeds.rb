# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(id: 1, name: "Ноутбук Samsung", price: 3500.0, category_id: 1, description: "Качественный ноутбук бизнес-класса")

Product.create(id: 2, name: "Ноутбук Lenovo", price: 2500.0, category_id: 1, description: "Надежный ноутбук для вас")
Product.create(id: 3, name: "Ноутбук HP", price: 1000.0, category_id: 1, description: "Ваш любимый ноутбук")