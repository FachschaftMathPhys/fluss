class CreateOfferComparisons < ActiveRecord::Migration[5.1]
  def change
    create_table :offer_comparisons do |t|
      t.float :price1
      t.float :price2
      t.float :price3
      t.text :product_description1
      t.text :product_description2
      t.text :production_description3
      t.string :offeror1
      t.string :offeror2
      t.string :offeror3
      t.string :link1
      t.string :link2
      t.string :link3
    end
  end
end
