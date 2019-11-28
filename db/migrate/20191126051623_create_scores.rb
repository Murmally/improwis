class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.belongs_to :student
      t.belongs_to :term
      t.belongs_to :lecturer
      t.float :points
      t.timestamps
    end
  end
end
