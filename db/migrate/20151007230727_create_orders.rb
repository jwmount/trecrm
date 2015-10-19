class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :product_id
      t.string  :order_number
      t.integer :terms
      t.string  :payment_method
      t.string  :rep
      t.integer :qty
      t.integer :season
      t.decimal :price,      precision: 10, scale: 2
      t.decimal :discount,   precision: 10
      t.boolean :paid
      t.decimal :tax,        precision: 10, scale: 2
      t.string  :shipper
      t.string  :ship_to    
      t.decimal :ship_cost,  precision: 10, scale: 2
      t.datetime :shipped_on
      t.boolean :shipped,    default: false
      t.text :notes

      t.timestamps null: false
    end
  end
end
