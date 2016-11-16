class CreateTerminalEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :terminal_entries do |t|
      t.string :station

      t.timestamps
    end
  end
end
