class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :subtotal, precision: 12, scale: 3
      t.decimal :tax, precision: 12, scale: 3
      t.decimal :shipping, precision: 12, scale: 3
      t.decimal :total, precision: 12, scale: 3
      t.text    :deliveryaddress
      t.text    :status
      t.references :order_status, index: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
