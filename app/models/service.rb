class Service < ApplicationRecord
  validates :client_name, :title, :amount, :execution_date, :status, :business_gain, presence: true
end
