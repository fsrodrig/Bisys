class CreateBicycles < ActiveRecord::Migration[5.0]
  def change
    create_table :bicycles do |t|
      t.string :idbicycle

      t.timestamps
    end
  end
end
