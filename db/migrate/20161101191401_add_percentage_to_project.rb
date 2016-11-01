class AddPercentageToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :percentage, :float
  end
end
