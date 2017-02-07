class WelcomeController < ApplicationController
  def index
    @stoped_projects = Project.where(project_status_id: 1).order(created_at: :desc)
    @running_projects = Project.where(project_status_id: 2).order(created_at: :desc)
    @paused_projects = Project.where(project_status_id: 3).order(created_at: :desc)
    @completed_projects = Project.where(project_status_id: 4).order(created_at: :desc)
    @projects = Project.all
    @services = Service.all.limit(10)
  end
end
