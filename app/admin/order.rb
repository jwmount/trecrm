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
  f.semantic_errors *f.object.errors.keys


    f.inputs "Approvals" do

      f.input :customer,
              :hint          => AdminConstants::ADMIN_ORDER_CUSTOMER_HINT
      f.input :product,
              :hint          => AdminConstants::ADMIN_ORDER_PRODUCT_HINT
      f.input :order_number,
              :hint          => AdminConstants::ADMIN_ORDER_ORDER_NUMBER_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_ORDER_NUMBER_PLACEHOLDER
      f.input :terms,
              :hint          => AdminConstants::ADMIN_ORDER_TERMS_HINT,
              :collection    => AdminConstants::ADMIN_ORDER_TERMS_COLLECTION,
              :as            => :select,
              :include_blank => false
      f.input :payment_method,
              :hint          => AdminConstants::ADMIN_ORDER_PAYMENT_METHOD_HINT,
              :collection    => AdminConstants::ADMIN_ORDER_PAYMENT_METHOD_COLLECTION,
              :as            => :select,
              :include_blank => false             
      f.input :rep,
              :hint          => AdminConstants::ADMIN_ORDER_REP_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_REP_PLACEHOLDER
      f.input :qty,          
              :hint          => AdminConstants::ADMIN_ORDER_QTY_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_QTY_PLACEHOLDER
      f.input :price,
              :hint          => AdminConstants::ADMIN_ORDER_PRICE_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_PRICE_PLACEHOLDER
      f.input :discount,
              :hint          => AdminConstants::ADMIN_ORDER_DISCOUNT_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_DISCOUNT_PLACEHOLDER
      f.input :paid,
              :hint          => AdminConstants::ADMIN_ORDER_PAID_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_PAID_PLACEHOLDER
      f.input :tax,
              :hint          => AdminConstants::ADMIN_ORDER_TAX_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_TAX_PLACEHOLDER

      f.input :season,
              :hint          => AdminConstants::ADMIN_ORDER_SEASON_HINT,
              :as            => :select,
              :collection    => AdminConstants::ADMIN_ORDER_SEASON_COLLECTION
     
      f.input :shipper,
              :hint          => AdminConstants::ADMIN_ORDER_SHIPPER_HINT,
              :as            => :select,
              :collection    => AdminConstants::ADMIN_ORDER_SHIPPER_COLLECTION

      f.input :ship_to,
              :hint          => AdminConstants::ADMIN_ORDER_SHIP_TO_HINT,
              :planceholder  => AdminConstants::ADMIN_ORDER_SHIP_TO_PLACEHOLDER
      f.input :ship_cost,
              :hint          => AdminConstants::ADMIN_ORDER_SHIP_COST_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_SHIP_COST_PLACEHOLDER
      f.input :shipped,
              :hint          => AdminConstants::ADMIN_ORDER_SHIPPED_HINT
      f.input :shipped_on,
              :hint          => AdminConstants::ADMIN_ORDER_SHIPPED_ON_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_SHIPPED_ON_PLACEHOLDER
      f.input :notes,
              :hint          => AdminConstants::ADMIN_ORDER_NOTES_HINT,
              :placeholder   => AdminConstants::ADMIN_ORDER_NOTES_HINT
    end
    error_panel f

    f.actions
  end
 permit_params :list, :of, :attributes, :on, :model
#
# or
#
  permit_params do
  permitted = [:customer_id, :product_id, :order_number, :terms, :rep, :qty, :price, :discount,
               :season, :paid, :tax, :shipper, :shipped, :shipped_on, :notes
              ]
#   permitted << :other if resource.something?
#   permitted
 end


end
