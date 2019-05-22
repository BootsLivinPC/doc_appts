class RemoveTypeFromDoctors < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :type, :string
  end
end
