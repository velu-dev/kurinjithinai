json.extract! product_category, :id, :cat_name, :cat_code, :unit_id, :created_at, :updated_at
json.url product_category_url(product_category, format: :json)
