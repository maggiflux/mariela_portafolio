class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :billing, optional: true

  scope :cart, (-> { where(payed: false)})
  
  def self.total
    where(nil).pluck("price * quantity").sum   
  end

  def self.to_paypal_items
    where(nil).map
    
  end
end
