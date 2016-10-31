class WelcomeController < ApplicationController
  def index
    @completed_projects = Project.where(project_status_id: 2).order(created_at: :desc)
  end
end
