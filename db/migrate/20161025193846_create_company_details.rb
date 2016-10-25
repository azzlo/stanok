class CreateCompanyDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :company_details do |t|
      t.string :name
      t.string :address
      t.string :logo
      t.integer :phone
      t.string :description

      t.timestamps
    end
  end
end
