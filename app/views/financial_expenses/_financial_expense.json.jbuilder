json.extract! financial_expense, :id, :amount, :description, :created_at, :updated_at
json.url financial_expense_url(financial_expense, format: :json)