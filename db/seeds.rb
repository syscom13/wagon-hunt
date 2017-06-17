# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create!(name: "Google", url: "https://google.com", tagline: "Don't be evil")
Product.create!(name: "And Co", url: "https://www.and.co/",
                               tagline: "Invoicing, Expenses, Contracts & Payments for your business")
Product.create!(name: "Bonsai", url: "https://www.hellobonsai.com", 
                               tagline: "Free bulletproof contracts for designers & developers")
