class CreateBodies < ActiveRecord::Migration[5.1]
  def change
    create_table :bodies do |t|
      t.string :name
      t.text :description
    end
  end
end
