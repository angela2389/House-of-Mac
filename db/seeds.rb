# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.delete_all

ab = Customer.create(name: "Ab", email:"ab@me.com", password:"password" )
angela = Customer.create(name: "Angela", email:"angela@me.com", password:"password" )

Order.delete_all

Order.create(customer: ab, deliveryaddress: "Amsterdam", status: "open")
Order.create(customer: angela, deliveryaddress: "Hoorn", status: "open")

Product.delete_all

Product.create(name: "MacBook", reference_number: 123, orders: Order.where(customer: "ab"))
Product.create(name: "MacBookAir", reference_number: 456)
Product.create(name: "Airportk", reference_number: 789)


#, products: Product.where(name: "MacBook")
