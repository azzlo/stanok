class Client < ApplicationRecord
  has_many :projects

  [:name, :contact_name, :email].each do |field|
    validates field, presence: true
  end
end
