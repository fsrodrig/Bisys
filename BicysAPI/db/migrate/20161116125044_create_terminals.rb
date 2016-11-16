class CreateTerminals < ActiveRecord::Migration[5.0]
  def change
    create_table :terminals do |t|
      t.string :id_terminal
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
