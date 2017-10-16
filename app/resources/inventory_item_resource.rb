class InventoryItemResource < JSONAPI::Resource
  attributes :name, :quantity, :purchase_date, :price, :storage_location, :lent_at
  has_one :user # Ausleiher
end
# Inventargegenstand: Bezeichnung (Tisch), Anzahl, Kaufdatu, Preis. Unterbringungsosrt, verliehen am
