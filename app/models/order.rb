class Order < ActiveRecord::Base

  belongs_to :customer
  belongs_to :product
  has_many   :shipments

  def display_name
    self.order_number
  end

  validates_presence_of :order_number
  
end
