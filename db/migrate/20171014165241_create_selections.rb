class CreateSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :selections do |t|
      t.text :explanation
      t.references :forwarding, foreign_key: true
    end
  end
end
