class Contributor < ApplicationRecord
  has_many :project_contributors
  has_many :projects, :through => :project_contributors
end
