class CreateOrderitems < ActiveRecord::Migration[5.0]
  def change
    
    create_table :orderitems do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
  end
end
