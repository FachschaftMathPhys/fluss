class OfferResource < JSONAPI::Resource
  has_one :decision
  has_one :option
end
# Assoziation zwischen Entscheidungsdialogen und den möglichen Auswahlmöglichkeiten
