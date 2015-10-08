class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :legal_name
      t.string :approved_to_order
      t.string :contact
      t.string :phone
      t.string :fax
      t.string :email
      t.string :taxid
      t.string :fein
      t.string :bank
      t.string :references
      t.text   :notes

      t.timestamps null: false
    end
  end
end
