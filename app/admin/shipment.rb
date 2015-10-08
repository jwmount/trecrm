ActiveAdmin.register Shipment do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
  permit_params do
    permitted = [:permitted, :customer_id, :order_id, :customer_id,
                 :shipper, :tracking_no, :cost, :insurance, :insurance_cost,
                 :notes
                ]
#   permitted << :other if resource.something?
#   permitted
  end


end
