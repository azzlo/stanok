class CreateProjectContributors < ActiveRecord::Migration[5.0]
  def change
    create_table :project_contributors do |t|
      t.references :project, foreign_key: true
      t.references :contributor, foreign_key: true
      t.float :percentage

      t.timestamps
    end
  end
end
