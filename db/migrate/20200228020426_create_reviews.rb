class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title 
      t.string :content
      t.belongs_to :student, foreign_key: true
      t.belongs_to :appointment, foreign_key: true
      t.timestamps
    end
  end
end
