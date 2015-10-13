class Customer < ActiveRecord::Base

  has_many :orders
  has_many :products
 
  def display_name
    self.name 
  end
  
end
