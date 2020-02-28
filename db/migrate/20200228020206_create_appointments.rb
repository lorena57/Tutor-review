class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_info
      t.belongs_to :student, foreign_key: true
      t.belongs_to :tutor, foreign_key: true
      t.timestamps
    end
  end
end
