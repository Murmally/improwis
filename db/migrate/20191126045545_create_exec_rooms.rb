class CreateExecRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :exec_rooms do |t|
      t.belongs_to :executive
      t.belongs_to :room
      t.timestamps
    end
  end
end
