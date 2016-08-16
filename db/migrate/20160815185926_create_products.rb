class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :reference_number
      t.string :name
      t.text :sub_header
      t.text :description
      t.string :image
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
