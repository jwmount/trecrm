class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :name
      t.string  :sku
      t.string  :characteristics
      t.text    :supplier
      t.string  :qty_on_hand
      t.integer :reorder_level
      t.integer :qty_minimum_order
      t.string  :gross_order_price
      t.string  :weight_per_each
      t.text    :notes
      t.timestamps null: false
    end
  end
end
