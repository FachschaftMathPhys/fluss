class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.references :forwarding, foreign_key: true
      t.string :label
    end
  end
end
