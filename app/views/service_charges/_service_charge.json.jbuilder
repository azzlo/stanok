json.extract! service_charge, :id, :amount, :description, :service_id, :created_at, :updated_at
json.url service_charge_url(service_charge, format: :json)