class AddProjectStatusToProject < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :project_status, foreign_key: true
  end
end
