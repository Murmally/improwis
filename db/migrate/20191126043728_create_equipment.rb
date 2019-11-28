class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.belongs_to :room
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
