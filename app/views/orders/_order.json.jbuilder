json.extract! order, :id, :product_id, :customer_references, :quantity, :total_cost, :payment, :is_delivered, :delivery_date, :order_status, :created_at, :updated_at
json.url order_url(order, format: :json)
