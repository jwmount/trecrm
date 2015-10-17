ActiveAdmin.register Order do
#  belongs_to :customer

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

  scope :all, :default => true 
  scope :paid do |orders|
    orders.where ({paid: true})
  end
  scope :shipped do |orders|
    orders.where ({shipped: true})
  end

 index do

 	selectable_column

    column "Order Details" do |order|
      render order
    end
    column :customer
    column :product
    column :rep
    column :qty
    column :price
    column :paid
    column :shipped
    
 end


 permit_params :list, :of, :attributes, :on, :model
#
# or
#
  permit_params do
  permitted = [:customer_id, :product_id, :order_number, :rep, :qty, :price, :paid, :tax, :shipping, :shipped,
               :notes
              ]
#   permitted << :other if resource.something?
#   permitted
 end


end
