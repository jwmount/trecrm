class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :order_id
      t.integer :customer_id
      t.string :supplier
      t.string :qty
      t.integer :reorder_level
      t.string :supplier
      t.string :weight_per_each
      t.string :notes
      t.string :timestamps

      t.timestamps null: false
    end
  end
end
