class CreateProjectPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :project_payments do |t|
      t.references :project, foreign_key: true
      t.float :payment
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
