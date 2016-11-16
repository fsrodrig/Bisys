class CreateReserves < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.datetime :reserve
      t.references :accounts, foreign_key: true
      t.references :bicycles, foreign_key: true

      t.timestamps
    end
  end
end
