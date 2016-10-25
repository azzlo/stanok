json.extract! project_contributor, :id, :project_id, :contributor_id, :percentage, :created_at, :updated_at
json.url project_contributor_url(project_contributor, format: :json)