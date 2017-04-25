class CreateServiceCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :service_charges do |t|
      t.float :amount
      t.text :description
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
