ActiveAdmin.register Order do
#  belongs_to :customer

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#


 permit_params :list, :of, :attributes, :on, :model
#
# or
#
  permit_params do
  permitted = [:customer_id, :order_number, :rep, :price, :paid, :tax, :shipping, :shipped,
               :notes
              ]
#   permitted << :other if resource.something?
#   permitted
 end


end
