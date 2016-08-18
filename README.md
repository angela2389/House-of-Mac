# README

## House of Mac Userflow
Through this app you can buy your macbooks and accessories. A user (customer) will enter the website on a landingpage. On this page .........
There also is a page with an overview of all the products. Here the customer can read the descriptions of the products, look at the images and see the price.
When he or she may want to buy an product, he/she can add it to the shoppingcart. In the shoppingcart view it is still possible to change the order. The products that are in the shoppingcart will be visible: name and price. Also the total price will be given
When the customer wants to make the order, he/she needs to be logged in. So before he/she can confirm the order he/she gets a log in page. The shoppingcart will be the same; for it is part of the session of the user.
After the login the customer will be redirected to the shoppingcart and he/she can confirm the order. After that a thank you page will appear.


### Steps
 1. Setting up the project
    1. Creating the project in the terminal, open repository on github, deploy to codaisseur.cloud
    2. Create the models, controllers and views



### Database Structure
  Models
  1. Customer -> user with devise
      - name:string
      - e-mail:string
      - password: string
  2. Product
      - name:string
      - sub_header:text
      - description:text
      - imgage:string
      - price:integer
      - stock:integer
  3. Order
      - customer_id:integer
      - delivery_address:text
      - status:string
  4. OrderItem
      - customer_id:integer
      - product_id:
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
