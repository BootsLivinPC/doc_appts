class AddTypesToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :type, :string
  end
end
