class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :reference_number
      t.string :name
      t.text  :sub_header
      t.text  :description
      t.string :image
      t.decimal :price, precision: 12, scale: 3
      t.integer :stock
      t.boolean :active

      t.timestamps
    end
  end
end
