class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :product_id
      t.string  :order_number
      t.string  :rep
      t.integer :qty
      t.decimal :price,      precision: 5, scale: 2
      t.decimal :discount,   precision: 2
      t.boolean :paid
      t.decimal :tax,        precision: 5, scale: 2
      t.decimal :shipping,   precision: 5, scale: 2
      t.datetime :shipped_on
      t.boolean :shipped,    default: false
      t.text :notes

      t.timestamps null: false
    end
  end
end
