class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :client, foreign_key: true
      t.string :name
      t.string :description
      t.date :initial_date
      t.date :final_date
      t.float :total_cost

      t.timestamps
    end
  end
end
