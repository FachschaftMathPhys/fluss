class OwnershipResource < JSONAPI::Resource
  has_one :account
  has_one :user
end
# Assoziation zwischen dem Besitzer eines Kontos und dem Konto selbst
