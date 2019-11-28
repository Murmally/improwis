class CreateExecutives < ActiveRecord::Migration[6.0]
  def change
    create_table :executives do |t|
      t.string :name
      t.string :surname
      t.timestamps
    end
  end
end
