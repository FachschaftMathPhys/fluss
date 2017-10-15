class CreateDrOcNecessaries < ActiveRecord::Migration[5.1]
  def change
    create_table :dr_oc_necessaries do |t|
      t.references :offer_comparison, foreign_key: true
      t.references :disbursal_request, foreign_key: true

      t.timestamps
    end
  end
end
