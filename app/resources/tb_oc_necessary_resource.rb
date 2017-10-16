class TbOcNecessaryResource < JSONAPI::Resource
  has_one :theoretikum_billing
  has_one :offer_comparison
end
# Assoziation ziwschen Theoretikumsabrechnungen und Vergleichsangebotszusammenfassungen
