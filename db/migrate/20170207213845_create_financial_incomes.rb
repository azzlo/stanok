class CreateFinancialIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :financial_incomes do |t|
      t.integer :amount
      t.references :project_payment, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
