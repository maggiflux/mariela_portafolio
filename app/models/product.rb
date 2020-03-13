class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_many :category
  has_many :orders
  has_many_attached :images

end