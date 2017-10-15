class CreateFsResolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :fs_resolutions do |t|
      t.references :offer_comparison, foreign_key: true
      t.references :budgetary_position, foreign_key: true
      t.decimal :figure
      t.text :description
      t.text :justification

      t.timestamps
    end
  end
end
