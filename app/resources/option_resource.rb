class OptionResource < JSONAPI::Resource
  attributes :label
#  has_one :forwarding
  has_many :decisions
end
