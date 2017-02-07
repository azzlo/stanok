class RemoveTitleFromServices < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :title, :string
  end
end
