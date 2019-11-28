class CreateGarants < ActiveRecord::Migration[6.0]
  def change
    create_table :garants do |t|
      t.string :name
      t.string :surname
      t.timestamps
    end
  end
end
