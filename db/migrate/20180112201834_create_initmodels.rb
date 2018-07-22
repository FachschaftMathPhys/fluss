class CreateInitmodels < ActiveRecord::Migration[5.1]
  def change
    create_table :initmodels do |t|
      t.string :model
      t.references :initfollowup, polymorphic: true

      t.timestamps
    end
  end
end
