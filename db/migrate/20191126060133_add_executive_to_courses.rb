class AddExecutiveToCourses < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :executive, null: false, foreign_key: true
  end
end
