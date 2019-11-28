class CreateTimetables < ActiveRecord::Migration[6.0]
  def change
    create_table :timetables do |t|
      t.belongs_to :student
      t.belongs_to :term
      t.timestamps
    end
  end
end
