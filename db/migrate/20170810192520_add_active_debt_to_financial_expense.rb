class AddActiveDebtToFinancialExpense < ActiveRecord::Migration[5.0]
  def change
    add_column :financial_expenses, :active_debt, :boolean, default: true
  end
end
