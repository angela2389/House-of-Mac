# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Orderitem.delete_all
Order.delete_all
Product.delete_all
Customer.delete_all

ab = Customer.create(name: "Ab", email:"ab@me.com", password:"password" )
angela = Customer.create(name: "Angela", email:"angela@me.com", password:"password" )

Product.delete_all

macbook = Product.create(name: "MacBook", reference_number: 123, image: "http://store.storeimages.cdn-apple.com/4662/as-images.apple.com/is/image/AppleInc/aos/published/images/m/ac/macbook/select/macbook-select-spacegray-201604?wid=1200&hei=630&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=8FRk11")
macbookair = Product.create(name: "MacBookAir", reference_number: 456, image: "http://store.storeimages.cdn-apple.com/4973/as-images.apple.com/is/image/AppleInc/aos/published/images/m/ac/macbook/air/macbook-air-gallery2-2014?wid=978&hei=580&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=mIBkR0")
macpro = Product.create(name: "MacPro", reference_number: 789, image: "http://store.storeimages.cdn-apple.com/4973/as-images.apple.com/is/image/AppleInc/aos/published/images/m/ac/mac/pro/mac-pro-gallery3-2013?wid=930&hei=629&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=xzFl90")
watch = Product.create(name: "Apple Watch", reference_number: 789, image: "http://cdn.idigitaltimes.com/sites/idigitaltimes.com/files/2016/04/14/apple-watch-1.jpg")
iphone = Product.create(name: "iPhone", reference_number: 789, image: "http://store.storeimages.cdn-apple.com/4973/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphonese/select/iphonese-select-2016?wid=1200&hei=630&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=9xwkJ2")

Order.delete_all

order1 = Order.create(customer: ab, deliveryaddress: "Amsterdam", status: "open", totalprice: 20)
Orderitem.create(order: order1, product: macbook, quantity: 1, subtotal: 10)


#, products: Product.where(name: "MacBook")
