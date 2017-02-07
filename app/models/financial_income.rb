class FinancialIncome < ApplicationRecord
  belongs_to :project_payment
  belongs_to :service
end
