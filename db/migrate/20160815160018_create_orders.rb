class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      #customer_id
      t.references :customer, foreign_key: true
      t.text :deliveryaddress
      t.string :status

      t.timestamps
    end
  end
end
