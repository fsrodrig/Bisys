class CreateReserveHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :reserve_histories do |t|
      t.datetime :initial_date
      t.datetime :final_date
      t.references :reserve_states, foreign_key: true
      t.references :reserves, foreign_key: true

      t.timestamps
    end
  end
end
