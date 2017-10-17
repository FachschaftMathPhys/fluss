class BudgetaryPositionResource < JSONAPI::Resource
  attributes :classification_number, :amount, :title, :description, :examples
  relationship :disbursal_requests, to: :many # Auszahlungsanträge
  relationship :inpayment_declarations, to: :many # Einzahlungsanträge
  relationship :theoretikum_billings, to: :many # Theoretikumsabrechnungen
end
# Wirtschaftsplanposten: Kennzahl, Höhe des veranschlagten Betrags. Bezeichnung, Beschreibung des Posten, Beispiele für die Nutzung
