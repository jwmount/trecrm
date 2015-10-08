ActiveAdmin.register Customer do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
 permit_params do
   permitted = [:permitted, :name, :legal_name, :approved_to_order, :contact,
                :phone, :fax, :email, :taxid, :fein, :bank, :references, :notes]
#   permitted << :other if resource.something?
#   permitted
 end


end
