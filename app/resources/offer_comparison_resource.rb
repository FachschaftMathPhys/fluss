class OfferComparisonResource < JSONAPI::Resource
  attributes :price1, :price2, :price3, :product_description1, :product_description2, :product_description3, :offeror1, :offeror2, :offeror3, :link1, :link2, :link3, :explanation
  has_one :disbursal_request # Auszahlungsantrag
  has_one :theoretikum_billing # Theoretikumgsabrechnung
  has_one :fs_resolution # Fachschaftssitzungsantrag
end
# 3- Vergleichsangebote: jeweils Preis, Produktbezeichnung, Anbieter, Link zur Angebotsseite/Datei des Scans, Erklärung, warum das eine Angebot vor dem anderen bevorzugt wurde
