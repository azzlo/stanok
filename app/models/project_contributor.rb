class ProjectContributor < ApplicationRecord
  belongs_to :project
  belongs_to :contributor
end
