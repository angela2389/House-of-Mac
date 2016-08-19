# README

## House of Mac Userflow
Through this app you can buy your macbooks and accessories. A user (customer) will enter the website on a landingpage. On this page we welcome the visitor to our shop.
Next there is a page with an overview of all the products. Here the customer can read the descriptions of the products, look at the images and see the price.
When he or she may want to buy an product, he/she can add it to the shoppingcart. In the shoppingcart view it is still possible to change the order. The products that are in the shoppingcart will be visible: name and price. Also the total price will be given
When the customer wants to make the order, he/she needs to be logged in. So before he/she can confirm the order he/she gets a log in page. The shoppingcart will be the same; for it is part of the session of the user.
After the login the customer will be redirected to the shoppingcart and he/she can confirm the order. After that a thank you page will appear.


### Steps
1. Setting up the project (thinking out database structure and userflow)
2. Creating the project in the terminal, open repository on github, deploy to codaisseur.cloud
3. Create the models, controllers and views
4. Create user with Devsise
5. Create seeds
6. Add relations
7. Add routes
8. Make landingpage, productview and product showpage
9. Implement navbar
10. Create shoppingcart with a session
11. Make calculation methods
12. Create view for shoppingcart
13. Fix paths from shoppingcart to order and orderitems
14. Save shoppingcart items in database/order
15. Fix update amount of items in shoppingcart
16. Update totalprice in order
17. Styling friday


### Database Structure
  Models
  1. Customer -> user with devise
      has_many :orders
      - name:string
      - e-mail:string
      - password: string

  2. Product
      has_and_belongs_to_many :orders
      has_many :orderitems
      - name:string
      - sub_header:text
      - description:text
      - imgage:string
      - price:integer
      - stock:integer

  3. Order
      has_and_belongs_to_many: products
      has_many :orderitems
      - customer_id
      - delivery_address:text
      - status:string

  4. OrderItem
      belongs_to :Order
      belongs_to :Product
      - customer_id
      - product_id
      - total_price:integer



### Running Locally
git@github.com:angela2389/House-of-Mac.git
http://nearby-cutpurse.codaisseur.cloud/
ssh://git@deis-builder.codaisseur.cloud:2222/nearby-cutpurse.git

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
