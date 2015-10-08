class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :customer_id
      t.text :shipper
      t.string :tracking_no
      t.decimal :cost
      t.boolean :insurance
      t.decimal :insurance_cost
      t.text :notes
      t.string :timestamps

      t.timestamps null: false
    end
  end
end
