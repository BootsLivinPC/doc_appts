class RemoveAppointmentFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_reference :appointments, :appointment, foreign_key: true
  end
end
