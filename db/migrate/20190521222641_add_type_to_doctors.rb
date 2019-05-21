class AddTypeToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :type, :string
  end
end
