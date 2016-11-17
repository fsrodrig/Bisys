class CreateTerminals < ActiveRecord::Migration[5.0]
  def change
    change_table :terminals do |t|
      t.string :id_terminal
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
