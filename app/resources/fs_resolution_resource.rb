class FsResolutionResource < JSONAPI::Resource
  attributes :figure, :description, :juristification
  has_one :offer_comparison
  has_one :budgetary_position
end
