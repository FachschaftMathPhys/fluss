class CreateContains < ActiveRecord::Migration[5.1]
  def change
    create_table :contains do |t|
      t.references :form, foreign_key: true
      t.references :form_element, foreign_key: true

      t.timestamps
    end
  end
end
