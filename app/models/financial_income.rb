class FinancialIncome < ApplicationRecord
  belongs_to :project_payment, optional: true
  belongs_to :service, optional: true
end
