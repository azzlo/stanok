class ChangeTypeToServiceTypeFromServices < ActiveRecord::Migration[5.0]
  def change
    rename_column :services, :type, :service_type
  end
end
