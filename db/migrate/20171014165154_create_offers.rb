class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.references :decision, foreign_key: true
      t.references :option, foreign_key: true
    end
  end
end
