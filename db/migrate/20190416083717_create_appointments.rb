class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.string :reason

      t.timestamps
    end
  end
end
