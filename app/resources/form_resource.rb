class FormResource < JSONAPI::Resource
  attributes :title # Überschrift des Formulars
  relationship :selections, to: :many # zugeordnete Auswahldialoge
  has_many :form_elements
end
# Formular als Teil eines Auswahldialogs
