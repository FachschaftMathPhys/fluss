class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.references :drink_position, foreign_key: true
      t.references :disbursal_request, foreign_key: true

      t.timestamps
    end
  end
end
