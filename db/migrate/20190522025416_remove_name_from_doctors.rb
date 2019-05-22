class RemoveNameFromDoctors < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :name, :string
  end
end
