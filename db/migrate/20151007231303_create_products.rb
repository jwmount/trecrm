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
      t.decimal :minimum_order_cost, precision: 8, scale: 2
      t.string  :quote_basis
      t.decimal :port_to_warehouse_cost, precision: 8, scale: 2
      t.decimal :insurance_cost, precision: 8, scale: 2
      t.decimal :min_order_ship_cost, precision: 8, scale: 2
      t.string  :weight_per_each
      t.text    :notes
      t.timestamps null: false
    end
  end
end
