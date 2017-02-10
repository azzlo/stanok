class Service < ApplicationRecord
  has_many :financial_incomes
  validates :client_name, :service_type, :amount, :execution_date, :status, :business_gain, presence: true

  before_save :add_financial_income

  private
  def add_financial_income
    if self.status == 'Finalizado'
      amount = self.amount
      percentage = self.business_gain
      total = percentage.to_f / 100 * amount.to_f
      self.financial_incomes.build(amount: total.to_i)
    end
  end
end
