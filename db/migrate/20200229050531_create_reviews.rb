class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :review
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :appointment, null: false, foreign_key: true
    end
  end
end
