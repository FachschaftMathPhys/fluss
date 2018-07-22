class OptionResource < JSONAPI::Resource
  attributes :label # Beschriftung des Auswahlbuttons
  relationship :decisions, to: :many # kann in mehreren Auswahldialogen verwendet werden
  has_one :optionfollowup, polymorphic: true
end
