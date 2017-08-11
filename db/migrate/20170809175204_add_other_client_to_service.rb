class AddOtherClientToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :other_client, :boolean, default: false
  end
end
