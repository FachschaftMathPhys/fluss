class CreateBudgetaryPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :budgetary_positions do |t|
      t.decimal :classification_number
      t.decimal :amount
      t.string :title
      t.text :description
      t.string :examples
      t.references :budgetary_group, foreign_key: true
      t.timestamps
    end
  end
end
