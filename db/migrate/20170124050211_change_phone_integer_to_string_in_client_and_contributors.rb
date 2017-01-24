class ChangePhoneIntegerToStringInClientAndContributors < ActiveRecord::Migration[5.0]
  def change
    change_column :contributors, :phone, :string
    change_column :clients, :phone, :string
  end
end
