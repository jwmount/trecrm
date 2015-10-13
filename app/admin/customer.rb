ActiveAdmin.register Customer do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters


  scope :all, :default => true 
  scope :approved_to_order do |customers|
    customers.where ({approved_to_order: true})
  end

 index do

    selectable_column

    column "Name (click for details)" do |customer|
      #link_to customer.name, admin_customer_path( customer )
      render customer
    end


    column :approved_to_order do |customer|
      status_tag (customer.approved_to_order ? "YES" : "No"), (customer.approved_to_order ? :ok : :error)
    end      
    column :contact
    column :phone
    column :email

    column "Orders" do |customer|
      render html: "<p> new"
      render customer.orders
    end

 end #index

 form do |f|
  error_panel f
  f.semantic_errors *f.object.errors.keys


    f.inputs "Approvals" do

      f.input :name,
              :hint     => AdminConstants::ADMIN_CUSTOMER_NAME_HINT
      f.input :approved_to_order, 
              :as       => :radio, 
              :hint     => AdminConstants::ADMIN_CUSTOMER_APPROVED_HINT
      f.input :legal_name,
              :hint     => AdminConstants::ADMIN_CUSTOMER_LEGAL_NAME_HINT
      f.input :contact
      f.input :phone
      f.input :email
      f.input :fax
      f.input :taxid
      f.input :fein
      f.input :bank
      f.input :references
      f.input :notes
    end
    f.actions
 end #form

# show :title => :display_name do
 show :title => :name do
    attributes_table do
      row :name
      row :legal_name
      row("approved_to_order") { status_tag (customer.approved_to_order ? "YES" : "No"), (customer.approved_to_order ? :ok : :error) }
      row :contact
      row :phone
      row :fax
      row :email
      row :taxid
      row :bank
      row :references
      row :notes
  end
 end #show

#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
 permit_params do
   permitted = [:id, :name, :legal_name, :approved_to_order, :contact,
                :phone, :fax, :email, :taxid, :fein, :bank, :references, :notes]
#   permitted << :other if resource.something?
#   permitted
 end


end
