class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.belongs_to :room
      t.belongs_to :course
      t.belongs_to :lecturer
      t.string :name
      t.string :term_type
      t.text :description
      t.datetime :date
      t.timestamps
    end
  end
end
