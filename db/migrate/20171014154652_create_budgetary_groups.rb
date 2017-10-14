class CreateBudgetaryGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :budgetary_groups do |t|
      t.string :name
    end
  end
end
