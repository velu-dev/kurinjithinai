json.extract! offer, :id, :offer_name, :products, :discount_percent, :validity, :created_at, :updated_at
json.url offer_url(offer, format: :json)
