class ThroughResource < JSONAPI::Resource
  has_one :selection
  has_one :form
end
## Assoziation zwischen einer Auswahldialogsseite und einem darauf vorhandenem Formular
