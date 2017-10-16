class BudgetaryPositionResource < JSONAPI::Resource
  attributes :classification_number, :amount, :title, :description, :examples
  has_many :disbursal_requests # Auszahlungsanträge
  has_many :inpayment_declarations # Einzahlungsanträge
  has_many :theoretikum_billings # Theoretikumsabrechnungen
end
# Wirtschaftsplanposten: Kennzahl, Höhe des veranschlagten Betrags. Bezeichnung, Beschreibung des Posten, Beispiele für die Nutzung
