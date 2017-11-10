json.extract! product, :id, :product_name, :quantity, :min_quantity, :price, :discount, :subscription_date, :min_delivery_date, :product_category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
