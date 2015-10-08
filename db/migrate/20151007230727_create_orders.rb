class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_id
      t.decimal :price
      t.boolean :paid
      t.decimal :tax
      t.decimal :shipping
      t.datetime :shipped
      t.text :notes
      t.string :timestamps

      t.timestamps null: false
    end
  end
end
