class Service < ApplicationRecord
  has_many :financial_incomes
  has_many :service_charges
  # validates_presence_of :client_name, unless => :other_client?
  validates_presence_of :client_id, unless: :other_client? 
  validates_presence_of :client_name, if: :other_client? 

  validates :service_type, :amount, :execution_date, :status, :business_gain, presence: true

  before_save :add_financial_income

  # attr_accessor :another_client

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
