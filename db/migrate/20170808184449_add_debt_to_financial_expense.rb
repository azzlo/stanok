class AddDebtToFinancialExpense < ActiveRecord::Migration[5.0]
  def change
    add_column :financial_expenses, :debt, :boolean
  end
end
