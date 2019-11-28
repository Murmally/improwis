class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :address
      t.string :room_type
      t.integer :capacity
      t.timestamps
    end
  end
end
