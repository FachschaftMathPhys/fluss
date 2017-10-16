class SelectionResource < JSONAPI::Resource
  attributes :explanation, :title # Erklärung der Auswahl, Überschrift
  has_many :forms
#  has_one :forwarding
end
# Erklärung der Auswahlmöglichkeiten in einer Auswahldialogsseite
