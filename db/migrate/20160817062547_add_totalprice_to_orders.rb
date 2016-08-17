class AddTotalpriceToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :totalprice, :integer
    rename_column :orderitems, :total_price, :subtotal
  end
end
