class InventoryItemResource < JSONAPI::Resource
  attributes :name, :quantity, :purchase_date, :price, :storage_location, :lent_at
  has_one :user
end
