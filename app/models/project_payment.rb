class ProjectPayment < ApplicationRecord
  belongs_to :project
  has_many :financial_incomes

  validates :payment, presence: true

  before_save :add_financial_income

  private
  def add_financial_income
    amount = self.payment
    percentage = self.project.percentage
    total = percentage.to_f / 100 * amount.to_f
    self.financial_incomes.build(amount: total.to_i)
  end
end
