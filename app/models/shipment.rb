class Shipment < ActiveRecord::Base

  belongs_to :orders

end
