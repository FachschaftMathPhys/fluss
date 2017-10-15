class FrOcNecessaryResource < JSONAPI::Resource
  has_one :fs_resolution
  has_one :offer_comparison
end
