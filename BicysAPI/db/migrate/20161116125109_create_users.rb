class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 20
      t.string :lastname, limit: 32
      t.string :email, limit: 50
      t.integer :dni
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
