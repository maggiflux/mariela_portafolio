class Product < ApplicationRecord
  enum category_id: [:poster, :tshirt, :fabric, :others]
  belongs_to :user
  belongs_to :category
end
