class Project < ApplicationRecord
  belongs_to :client
  has_many :project_paiments
  has_many :project_contributors
  has_many :contributors, :through => :project_contributors

  [:name].each do |field|
    validates field, presence: true
  end
end
