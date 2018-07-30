class InitmodelResource < JSONAPI::Resource
  attributes :model # Beschriftung des Auswahlbuttons
  has_one :initfollowup, polymorphic: true
  has_many :decisions
  has_one :start
  has_many :options
  has_many :selections
end
