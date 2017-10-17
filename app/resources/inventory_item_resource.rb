class InventoryItemResource < JSONAPI::Resource
  attributes :name, :quantity, :purchase_date, :price, :storage_location, :lent_at
  relationship :user, to: :one # Ausleiher
end
# Inventargegenstand: Bezeichnung (Tisch), Anzahl, Kaufdatu, Preis. Unterbringungsosrt, verliehen am
