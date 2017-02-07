class Service < ApplicationRecord
  validates :client_name, :service_type, :amount, :execution_date, :status, :business_gain, presence: true
end
