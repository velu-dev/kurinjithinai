json.extract! cart, :id, :product_id, :customer_id, :quantity, :total_amount, :is_checked_out, :created_at, :updated_at
json.url cart_url(cart, format: :json)
