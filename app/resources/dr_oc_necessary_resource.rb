class DrOcNecessaryResource < JSONAPI::Resource
  has_one :disbursal_request
 has_one :offer_comparison
end
