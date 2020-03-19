class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_many :category
  has_many :orders, dependent: :destroy
  has_one_attached :image

end