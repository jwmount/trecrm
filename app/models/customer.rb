class Customer < ActiveRecord::Base

  has_many :orders
  has_many :shipments
  has_many :products
  
end
