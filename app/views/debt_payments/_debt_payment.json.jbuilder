json.extract! debt_payment, :id, :amount, :financial_expense_id, :description, :created_at, :updated_at
json.url debt_payment_url(debt_payment, format: :json)