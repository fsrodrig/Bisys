class CreateReserves < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.datetime :reserve
      t.references :account, foreign_key: true
      t.references :bicycle, foreign_key: true

      t.timestamps
    end
  end
end
