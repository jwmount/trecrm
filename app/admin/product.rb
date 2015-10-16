ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

  index do

    column :name
    column :sku
    column :characteristics
    column :quote_basis
    column :minimum_order_cost
    column :minimum_order_ship_cost
  end
  
  form do |f|
    error_panel f

    f.inputs "Site Details" do
      f.input :name,
        :hint                => AdminConstants::ADMIN_PRODUCT_NAME_HINT,
        :placeholder         => AdminConstants::ADMIN_PRODUCT_NAME_PLACEHOLDER 
      
      f.input :sku,
        :hint                => AdminConstants::ADMIN_PRODUCT_SKU_HINT, 
        :placeholder         => AdminConstants::ADMIN_PRODUCT_SKU_PLACEHOLDER

      f.input :characteristics,
        :hint                => AdminConstants::ADMIN_PRODUCT_CHARACTERISTICS_HINT,
        :placeholder         => AdminConstants::ADMIN_PRODUCT_CHARACTERISTICS_PLACEHOLDER

      f.input :quote_basis,
        :as                  => :select,
        :collection          => AdminConstants::ADMIN_PRODUCT_QUOTE_BASIS_COLLECTION,
        :include_blank       => false,
        :required            => true,
        :hint                => AdminConstants::ADMIN_PRODUCT_QUOTE_BASIS_HINT
    end
    f.actions
end

 permit_params :list, :of, :attributes, :on, :model
#
# or
#
  permit_params do
    permitted = [:name, :sku, :characteristics, :supplier, :qty_on_hand,
    	         :reorder_level, :qty_minium_order, :minimum_order_cost,
    	         :quote_basis, :port_to_warehouse_cost, :insurance_cost,
    	         :min_order_ship_cost, :weight_per_each, :notes
                ]
#   permitted << :other if resource.something?
#   permitted
  end


end
