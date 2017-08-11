class FinancialExpense < ApplicationRecord
	has_many :debt_payments
	validates :amount, :description, presence: true
end
