class AddClientIdToService < ActiveRecord::Migration[5.0]
  def change
    add_reference :services, :client, foreign_key: true
  end
end
