class CreateLecturers < ActiveRecord::Migration[6.0]
  def change
    create_table :lecturers do |t|
      t.belongs_to :garant
      t.string :name
      t.string :surname
      t.timestamps
    end
  end
end
