class AddFinishDateToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :finish_date, :date
  end
end
