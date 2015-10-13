class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|

      t.integer :order_id
      t.integer :product_id
      t.string  :code
      
      t.timestamps null: false
    end
  end
end
