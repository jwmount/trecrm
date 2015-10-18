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
  ADMIN_ORDER_CUSTOMER_HINT              = "Name of buyer or retailer.  If new create a Customer entry first."

  ADMIN_ORDER_PRODUCT_HINT               = "Product ordered. If not found in list create it in Products."

  ADMIN_ORDER_ORDER_NUMBER_HINT          = "Order Identifier."
  ADMIN_ORDER_ORDER_NUMBER_PLACEHOLDER   = "Use Customer initials and incremental number.  For Maring Tack & Feed, MTF-0001"

  ADMIN_ORDER_TERMS_HINT                 = "Payment terms."
  ADMIN_ORDER_TERMS_COLLECTION           = %w[ Paid_in_full Delivery Net15 Net30 On_sale-Consignment]
  ADMIN_ORDER_TERMS_PLACEHOLDER          = "Net15"

  ADMIN_ORDER_REP_HINT                   = "Rep who gets credit for tis order."
  ADMIN_ORDER_REP_PLACEHOLDER            = "Rep name"

  ADMIN_ORDER_QTY_HINT                   = "Total piece count for order.  List color and size options in Notes."
  ADMIN_ORDER_QTY_PLACEHOLDER            = "300"

  ADMIN_ORDER_PRICE_HINT                 = "Gross price for this order."
  ADMIN_ORDER_PRICE_PLACEHOLDER          = "144 * 10 = 1,440."
  
  ADMIN_ORDER_DISCOUNT_HINT              = "Gross price off price for this order if any."
  ADMIN_ORDER_DISCOUNT_PLACEHOLDER       = "$144"
  
  ADMIN_ORDER_PAID_HINT                  = "Check if paid in full including tax and shipping costs."
  ADMIN_ORDER_PAID_PLACEHOLDER           = "100.00"

  ADMIN_ORDER_TAX_HINT                   = "Sales and similar taxes due on price amount."
  ADMIN_ORDER_TAX_PLACEHOLDER            = "100.00"
  
  ADMIN_ORDER_SHIP_TO_HINT               = "Address order will ship or deliver to. If direct deliver, use 'Delivered'."
  ADMIN_ORDER_SHIP_TO_PLACEHOLDER        = "123 Elm St., Somerville, NJ 07060 attn: Nancy"

  ADMIN_ORDER_SHIP_COST_HINT             = "Shipping cost San Rafael to customer ship_to address."
  ADMIN_ORDER_SHIP_COST_PLACEHOLDER      = "$144"

  ADMIN_ORDER_SHIPPED_HINT               = "Check if shipped or delivered complete."

  ADMIN_ORDER_PAYMENT_METHOD_HINT        = "Payment method used.  If other, describe in Notes."
  ADMIN_ORDER_PAYMENT_METHOD_COLLECTION  = %w[ Visa Paymentech Paypal Invoice Cash Check Invoice Consignment Other ]
 
  ADMIN_ORDER_SHIPPED_ON_HINT            = "Date was or will be shipped."
  ADMIN_ORDER_SHIPPED_ON_PLACEHOLDER     = "mm-dd-yyyy"

  ADMIN_ORDER_NOTES_HINT                 = "Notes about this order."
  ADMIN_ORDER_NOTES_PLACEHOLDER          = "See invoice in QBO."
#
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
