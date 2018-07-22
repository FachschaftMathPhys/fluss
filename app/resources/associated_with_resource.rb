class AssociatedWithResource < JSONAPI::Resource
  has_one :expense, polymorphic: true
  has_one :offer_comparison
end
