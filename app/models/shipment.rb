class Shipment < ActiveRecord::Base

  has_and_belongs_to_many :orders
  has_and_belongs_to_many :products

end
