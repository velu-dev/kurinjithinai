json.extract! customer, :id, :full_name, :mobile_number, :email_id, :password, :created_at, :updated_at
json.url customer_url(customer, format: :json)
