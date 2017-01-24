class ChangePhoneIntegerToStringForCompanyDetails < ActiveRecord::Migration[5.0]
  def change
    change_column :company_details, :phone, :string
  end
end
