class SelectionResource < JSONAPI::Resource
  attributes :explanation
  has_many :forms
#  has_one :forwarding
end
