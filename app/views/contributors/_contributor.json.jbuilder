json.extract! contributor, :id, :name, :email, :phone, :skills, :created_at, :updated_at
json.url contributor_url(contributor, format: :json)