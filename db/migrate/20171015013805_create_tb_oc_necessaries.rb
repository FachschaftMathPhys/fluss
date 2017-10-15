class CreateTbOcNecessaries < ActiveRecord::Migration[5.1]
  def change
    create_table :tb_oc_necessaries do |t|
      t.references :offer_comparison, foreign_key: true
      t.references :theoretikum_billing, foreign_key: true

      t.timestamps
    end
  end
end
