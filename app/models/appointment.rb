class Appointment < ApplicationRecord

    belongs_to :tutor
    belongs_to :student #creator of it

    has_many :reviews
    has_many :students, through: :reviews #students who reviewed it

end
