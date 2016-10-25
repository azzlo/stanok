json.extract! project_payment, :id, :project_id, :payment, :description, :user_id, :created_at, :updated_at
json.url project_payment_url(project_payment, format: :json)