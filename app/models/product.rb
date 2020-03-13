class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category
  has_many :orders
  has_many_attached :images

end
