json.extract! customer_detail, :id, :address1, :address2, :city, :state, :pincode, :customer_id, :created_at, :updated_at
json.url customer_detail_url(customer_detail, format: :json)
