class ThroughResource < JSONAPI::Resource
  has_one :selection
  has_one :form
end
