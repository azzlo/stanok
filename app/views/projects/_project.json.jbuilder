json.extract! project, :id, :client_id, :name, :description, :initial_date, :final_date, :total_cost, :created_at, :updated_at
json.url project_url(project, format: :json)