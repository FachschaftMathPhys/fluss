class FrOcNecessaryResource < JSONAPI::Resource
  has_one :fs_resolution
  has_one :offer_comparison
end
# Wenn 3-Vergleichsangebote notwendig bei Finanzanträgen, stellt diese Assoziation diese Verbindung her
