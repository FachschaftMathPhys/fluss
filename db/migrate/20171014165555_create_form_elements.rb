class CreateFormElements < ActiveRecord::Migration[5.1]
  def change
    create_table :form_elements do |t|
      t.string :type
      t.string :label
      t.string :data_field
    end
  end
end
