class CreateCourseRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :course_registrations do |t|
      t.belongs_to :student
      t.belongs_to :garant
      t.belongs_to :course
      t.datetime :date
      t.boolean :approved
      t.timestamps
    end
  end
end
