class FormResource < JSONAPI::Resource
  attributes :title # Überschrift des Formulars
  relationship :selections, to: :many # zugeordnete Auswahldialoge
end
# Formular als Teil eines Auswahldialogs
