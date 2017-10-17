class BodyResource < JSONAPI::Resource
  attributes :name, :description # Name des Gremiums/Organisationsstruktur, Beschreibung dergleichen
  relationship :disbursal_requests, to: :many # Auszahlungsanträge
  relationship :inpayment_declarations, to: :many # Einzahlungsanträge
  relationship :theoretikum_billings, to: :many # Theoretikumsabrechnungen
end
