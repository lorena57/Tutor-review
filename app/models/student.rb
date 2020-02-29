class Student < ApplicationRecord

    has_many :reviews
    has_many :reviewed_appointments, through: :reviews, source: :appointment
    has_many :appointments #appointments that were made

    has_secure_password

end
