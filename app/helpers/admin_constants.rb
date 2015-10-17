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
  ADMIN_CUSTOMER_APPROVED_HINT           = "Customer is approved to order."
  ADMIN_CUSTOMER_CONTACT_HINT            = "Person who knows about buying from us."
  ADMIN_CUSTOMER_LEGAL_NAME_HINT         = "Legal business name, e.g. Saddles DBA or LLC or Corp."
  ADMIN_CUSTOMER_NAME_HINT               = "Best known or public name."   
  ADMIN_CUSTOMER_PHONE_HINT              = "Contact person phone number."
  ADMIN_CUSTOMER_EMAIL_HINT              = "Best email to use for Contact person."

  ADMIN_CUSTOMER_TAXID_LABEL             = "TaxID"
  ADMIN_CUSTOMER_TAXID_HINT              = "State Tax ID, if there is one"
  ADMIN_CUSTOMER_TAXID_PLACEHOLDER        = "72-4543245"

  ADMIN_CUSTOMER_FEIN_LABEL              = "FEIN"
  ADMIN_CUSTOMER_FEIN_HINT               = "Federal Employer Identification Number"
  ADMIN_CUSTOMER_FEIN_PLACEHOLDER        = "72-4543245"

  ADMIN_CUSTOMER_NOTES_HINT              = "Notes about this customer generally.  To track conversations and agreements use Comments."
  ADMIN_CUSTOMER_NOTES_PLACEHOLDER       = "Example:  OK to leave shipment instructions."
#
# Order
#
  ADMIN_ORDER_NUMBER_HINT                = "Order ID or tracking number."
  ADMIN_ORDER_NUMBER_PLACEHOLDER         = "1-0001"

  ADMIN_ORDER_PAYMENT_METHOD_HINT        = "Payment method used.  If other, describe in Notes."
  ADMIN_ORDER_PAYMENT_METHOD_COLLECTION  = %w[ Visa Paymentech Paypal Invoice Check Invoice Other ]
  ADMIN_ORDER_SHIPPED_ON_HINT            = "Date was or will be shipped."
#
# Product
#
  ADMIN_PRODUCT_NAME_HINT                = "Name of product as advertised."
  ADMIN_PRODUCT_NAME_PLACEHOLDER         = "Product name"
  ADMIN_PRODUCT_SKU_HINT                 = "Stocking Unit code"
  ADMIN_PRODUCT_SKU_PLACEHOLDER          = "sku"
  ADMIN_PRODUCT_CHARACTERISTICS_HINT     = "Feature description."
  ADMIN_PRODUCT_CHARACTERISTICS_PLACEHOLDER = "Describe product features, color, size etc."
  ADMIN_PRODUCT_QUOTE_BASIS_COLLECTION   = %w[ FOB XFACTORY OTHER]
  ADMIN_PRODUCT_QUOTE_BASIS_HINT         = "Quote coverage for shipping from factory."
  ADMIN_PRODUCT_MOC_HINT                 = "Price of minimum order."
  ADMIN_PRODUCT_MOC_PLACEHOLDER          = "$120.00"
  ADMIN_PRODUCT_MOCSC_HINT               = "Minimum order shipping cost by ground."
  ADMIN_PRODUCT_MOCSC_PLACEHOLDER        = "$48.00"

end
