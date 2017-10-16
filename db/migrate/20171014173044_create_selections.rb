class CreateSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :selections do |t|
      t.text :explanation
    #  t.references :forwarding, foreign_key: true
      t.string :title
      t.timestamps
    end
  end
end
