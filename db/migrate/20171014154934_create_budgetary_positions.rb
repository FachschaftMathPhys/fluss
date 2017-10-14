class CreateBudgetaryPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :budgetary_positions do |t|
      t.float :classification_number
      t.float :amount
      t.string :title
      t.text :description
      t.string :examples
    end
  end
end
