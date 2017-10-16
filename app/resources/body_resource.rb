class BodyResource < JSONAPI::Resource
  attributes :name, :description # Name des Gremiums/Organisationsstruktur, Beschreibung dergleichen
  has_many :disbursal_requests # Auszahlungsanträge
  has_many :inpayment_declarations # Einzahlungsanträge
  has_many :theoretikum_billings # Theoretikumsabrechnungen
end
