# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

nicolas = User.create!(email: "nicolas@test.com", password: "foobar")
victor = User.create!(email: "victor@test.com", password: "foobar")

Product.create!(user: nicolas, name: "Oristand", url: "https://oristand.co/",
                               tagline: "A super affordable, portable standing desk ",
                               category: "design")
and_co = Product.create!(user: nicolas, name: "And Co", url: "https://www.and.co/",
                               tagline: "Invoicing, Expenses, Contracts & Payments for your business",
                               category: "tech")
bonsai = Product.create!(user: victor, name: "Bonsai", url: "https://www.hellobonsai.com",
                               tagline: "Free bulletproof contracts for designers & developers",
                               category: "tech")
le_wagon = Product.create!(user: victor, name: "Le Wagon", url: "https://www.lewagon.com",
                               tagline: "Coding bootcamp for entrepreneurs and creative minds",
                               category: "education")

bonsai.upvotes.create! user: nicolas
bonsai.upvotes.create! user: victor
and_co.upvotes.create! user: nicolas
le_wagon.upvotes.create! user: nicolas
