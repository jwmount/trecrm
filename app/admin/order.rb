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

    column "Order Details (click for details)" do |order|
      render order
    end
    column :customer
    column :product
    column :rep
    column :qty
    column :price
    column :paid
    column :terms
    column :shipped
    
 end

 form do |f|
  error_panel f
  f.semantic_errors *f.object.errors.keys


    f.inputs "Approvals" do

      f.input :customer
      f.input :product
      f.input :order_number
      f.input :terms,
              :hint          => AdminConstants::ADMIN_ORDER_TERMS_HINT,
              :collection    => AdminConstants::ADMIN_ORDER_TERMS_COLLECTION,
              :as            => :select,
              :include_blank => false
      f.input :rep
      f.input :qty
      f.input :price
      f.input :discount
      f.input :paid
      f.input :tax
      f.input :shipping
      f.input :shipped
      f.input :shipped_on
      f.input :notes
    end
    f.actions
  end
 permit_params :list, :of, :attributes, :on, :model
#
# or
#
  permit_params do
  permitted = [:customer_id, :product_id, :order_number, :rep, :qty, :price, :discount,
               :paid, :tax, :shipping, :shipped, :shipped_on, :notes
              ]
#   permitted << :other if resource.something?
#   permitted
 end


end
