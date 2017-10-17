class SelectionResource < JSONAPI::Resource
  attributes :explanation, :title # Erklärung der Auswahl, Überschrift
  relationship :forms, to: :many
#  has_one :forwarding
end
# Erklärung der Auswahlmöglichkeiten in einer Auswahldialogsseite
