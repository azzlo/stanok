class CreateFinancialExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :financial_expenses do |t|
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
