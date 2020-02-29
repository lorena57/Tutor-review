class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_info 
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :tutor, null: false, foreign_key: true
    end
  end
end
