class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :years_exp
      t.string :SME

      t.timestamps
    end
  end
end
