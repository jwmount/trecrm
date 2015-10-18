class Product < ActiveRecord::Base

  has_many :orders
  
  def display_name
  	self.name
  end

  validates_presence_of :name, :sku, :characteristics, :quote_basis, :minimum_order_cost

end
