json.extract! backend_user, :id, :user_name, :mobile_number, :email_id, :password, :role_id, :created_at, :updated_at
json.url backend_user_url(backend_user, format: :json)
