class OfferComparisonResource < JSONAPI::Resource
  attributes :price1, :price2, :price3, :product_description1, :product_description2, :product_description3, :offeror1, :offeror2, :offeror3, :link1, :link2, :link3, :explanation
  relationship :disbursal_request, to: :many # Auszahlungsantrag
  relationship :theoretikum_billing, to: :many # Theoretikumgsabrechnung
  relationship :fs_resolution, to: :many # Fachschaftssitzungsantrag
  relationship :financing_application, to: :many
  has_one :ocstep, polymorphic: true
end
# 3- Vergleichsangebote: jeweils Preis, Produktbezeichnung, Anbieter, Link zur Angebotsseite/Datei des Scans, Erklärung, warum das eine Angebot vor dem anderen bevorzugt wurde
