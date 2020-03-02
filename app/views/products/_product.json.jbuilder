json.extract! product, :id, :sku, :product_name, :size, :features, :price, :user_id, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
