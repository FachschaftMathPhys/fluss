class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.references :optionfollowup, polymorphic: true
      t.string :label

      t.timestamps
    end
  end
end
