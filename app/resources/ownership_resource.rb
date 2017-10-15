class OwnershipResource < JSONAPI::Resource
  has_one :account
  has_one :user
end
