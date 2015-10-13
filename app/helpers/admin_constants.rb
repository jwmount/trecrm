# If these values are changed, re-run migrations or reload schema
# $ bundle exec rake db:drop db:create db:schema:load db:seed
# Internationalization, see http://stackoverflow.com/questions/3629894/internationalization-for-constants-hashes-in-rails-3
module AdminConstants
  
#
# Addresses
#
  ADMIN_ADDRESS_OWNER_NOT_FOUND          = "Company does not exist, address should be deleted."
  ADMIN_ADDRESS_PERSON_NOT_FOUND         = "Person does not exist, address should be deleted."
  ADMIN_ADDRESS_PROJECT_NOT_FOUND        = "Project does not exist, address should be deleted."
  ADMIN_ADDRESS_TIP_NOT_FOUND            = "Tip does not exist, address should be deleted."
#
# Company
#
  ADMIN_CUSTOMER_LEGAL_NAME_HINT         = "Legal business name, e.g. Saddles DBA or LLC or Corp."
  ADMIN_CUSTOMER_APPROVED_HINT           = "Customer is approved to order."
  ADMIN_CUSTOMER_NAME_HINT               = "Best known or public name."   
end
