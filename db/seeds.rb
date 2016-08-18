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

macbook = Product.create(
  reference_number: 123,
  name: "MacBook",
  sub_header: "13.3 inch | Intel Core i5 | 8 GB werkgeheugen | 128 GB SSD", description: "MacBook Air is voorzien van 8 GB geheugen, een Intel Core i5-processor van de vijfde generatie, Thunderbolt 2 en geweldige ingebouwde apps. En de batterij gaat een hele dag mee. Omdat ’ie zo dun, licht, duurzaam en tegelijkertijd heel krachtig is, kun je er letterlijk en figuurlijk nog meer kanten mee uit.",
  image: "https://s.s-bol.com/imgbase0/imagebase3/large/FC/2/5/7/5/9200000040495752.jpg",
  price: 1350
  )
macbookair = Product.create(
  reference_number: 456,
  name: "MacBookAir",
  sub_header: "Voorzien van een Nederlands qwertytoetsenbord. 13.3 inch | Intel Core i5 | 8 GB werkgeheugen | 128 GB SSD",
  description: "De 13-inch Apple MacBook Pro MF839N/A met Retina-display is de ideale laptop voor iedereen die op zoek is naar razendsnelle prestaties in een ongelooflijk compact en licht ontwerp. De verbluffende prestaties zijn te danken aan het gloednieuwe Force Touch-trackpad, Intel Core i5-processor van de vijfde generatie, snelle 128 GB Solid State Drive, 8 GB werkgeheugen, een indrukwekkende batterijduur en een schitterend Retina-display.",
  image: "https://s.s-bol.com/imgbase0/imagebase3/large/FC/2/0/9/8/9200000058048902.jpg", price: 1050
  )
airport = Product.create(
  reference_number: 789,
  name: "Airport",
  sub_header: "Apple AirPort Time Capsule - Router - AC1750 - 2TB ",
  description: "De enige router met ingebouwde 2 Terabyte NAS die alle extra netwerk en cloudfuncties van je Apple apparaten direct ondersteund. Met Apple AirPort Time Capsule beschik je in een keer over een supersnel WiFi-basisstation en een eenvoudig te gebruiken back-upapparaat. Een reservekopie maken van je gegevens is nu wel heel erg gemakkelijk. Het is een kwestie van een keer instellen en de AirPort Time Capsule doet de rest. De AirPort Time Capsule werkt samen met OS X om automatisch en draadloos back-ups te maken, zodat je er altijd zeker van bent dat al je belangrijke gegevens veilig zijn. Elke foto. Elk bestand. Elk muzieknummer. Zelfs je programma’s en OS X-instellingen worden bewaard. Deze handige harde schijf slaat het allemaal op en wel tot 2 TB aan gegevens.",
  image: "https://s.s-bol.com/imgbase0/imagebase3/large/FC/1/4/7/8/9200000015008741.jpg",
  price: 280
  )

Order.delete_all

order1 = Order.create(customer: ab, deliveryaddress: "Amsterdam", status: "open", totalprice: 20)
Orderitem.create(order: order1, product: macbook, quantity: 1, subtotal: 10)


#, products: Product.where(name: "MacBook")
