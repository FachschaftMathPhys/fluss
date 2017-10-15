class CreateInventoryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.integer :quantity
      t.date :purchase_date
      t.decimal :price
      t.string :storage_location
      t.references :user, foreign_key: true
      t.date :lent_at

      t.timestamps
    end
  end
end
