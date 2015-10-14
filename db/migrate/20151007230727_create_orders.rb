class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string  :order_number
      t.string  :rep
      t.decimal :price
      t.decimal :discount
      t.boolean :paid
      t.decimal :tax
      t.decimal :shipping
      t.datetime :shipped
      t.text :notes

      t.timestamps null: false
    end
  end
end
