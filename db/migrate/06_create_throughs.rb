class CreateThroughs < ActiveRecord::Migration[5.1]
  def change
    create_table :throughs do |t|
      t.references :selection, foreign_key: true
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
