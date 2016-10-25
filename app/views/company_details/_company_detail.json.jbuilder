json.extract! company_detail, :id, :name, :address, :logo, :phone, :description, :created_at, :updated_at
json.url company_detail_url(company_detail, format: :json)