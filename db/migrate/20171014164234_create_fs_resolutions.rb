class CreateFsResolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :fs_resolutions do |t|
      t.references :offer_comparison, foreign_key: true
      t.references :budgetary_position, foreign_key: true
      t.float :figure
      t.text :description
      t.text :justification
    end
  end
end
