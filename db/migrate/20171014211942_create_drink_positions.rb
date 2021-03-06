class CreateDrinkPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_positions do |t|
      t.float :percentage
      t.integer :quantity
      t.float :volume
      t.string :name
      t.references :disbursal_request, foreign_key: true
      t.timestamps
    end
  end
end
