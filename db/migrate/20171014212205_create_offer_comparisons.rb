class CreateOfferComparisons < ActiveRecord::Migration[5.1]
  def change
    create_table :offer_comparisons do |t|
      t.decimal :price1
      t.decimal :price2
      t.decimal :price3
      t.text :product_description1
      t.text :product_description2
      t.text :product_description3
      t.string :offeror1
      t.string :offeror2
      t.string :offeror3
      t.string :link1
      t.string :link2
      t.string :link3
      t.text :explanation
      t.timestamps
    end
  end
end
