# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Order.delete_all

ab = Customer.create(name: "Ab", email:"ab@me.com", password:"password" )
angela = Customer.create(name: "Angela", email:"angela@me.com", password:"password" )

product1 = Product.create(name: "MacBook", reference_number: 123)
product2 = Product.create(name: "MacBookAir", reference_number: 456)

order1 = Order.create(customer: ab, deliveryaddress: "Amsterdam", status: "open", products: [product1])
order2 = Order.create(customer: angela, deliveryaddress: "Hoorn", status: "open", products: [product2])

#, products: Product.where(name: "MacBook")
