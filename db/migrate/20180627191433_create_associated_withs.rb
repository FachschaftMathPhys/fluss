class CreateAssociatedWiths < ActiveRecord::Migration[5.1]
  def change
    create_table :associated_withs do |t|
      t.references :expense, polymorphic: true
      t.references :offer_comparison, foreign_key: true

      t.timestamps
    end
  end
end
