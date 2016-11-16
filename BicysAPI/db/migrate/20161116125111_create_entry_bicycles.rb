class CreateEntryBicycles < ActiveRecord::Migration[5.0]
  def change
    create_table :entry_bicycles do |t|
      t.datetime :in_date
      t.datetime :out_date
      t.references :bicycles, foreign_key: true
      t.references :terminal_entries, foreign_key: true

      t.timestamps
    end
  end
end
