class CreateReserveStates < ActiveRecord::Migration[5.0]
  def change
    create_table :reserve_states do |t|
      t.string :reserve_state

      t.timestamps
    end
  end
end
