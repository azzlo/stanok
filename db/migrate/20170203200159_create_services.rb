class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :client_name
      t.text :customer_contact_information
      t.string :title
      t.string :type
      t.text :description
      t.integer :amount
      t.date :execution_date
      t.string :status
      t.integer :business_gain
      t.text :conclusions

      t.timestamps
    end
  end
end
