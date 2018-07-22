class CreateStarts < ActiveRecord::Migration[5.1]
  def change
    create_table :starts do |t|
      t.references :first, polymorphic: true

      t.timestamps
    end
  end
end
