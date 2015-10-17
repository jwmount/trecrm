class Product < ActiveRecord::Base

  has_many :orders
  
  def display_name
  	self.name
  end

end
