class CreateDebtPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :debt_payments do |t|
      t.decimal :amount
      t.references :financial_expense, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
