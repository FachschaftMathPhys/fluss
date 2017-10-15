class CreateFrOcNecessaries < ActiveRecord::Migration[5.1]
  def change
    create_table :fr_oc_necessaries do |t|
      t.references :offer_comparison, foreign_key: true
      t.references :fs_resolution, foreign_key: true

      t.timestamps
    end
  end
end
