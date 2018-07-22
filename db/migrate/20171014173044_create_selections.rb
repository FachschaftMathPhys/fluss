class CreateSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :selections do |t|
      t.text :explanation
      t.string :title
      t.timestamps
    end
  end
end
