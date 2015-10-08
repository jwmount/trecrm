class Shipment < ActiveRecord::Base

  belongs_to :customer
  belongs_to :order
  belongs_to :product

end
