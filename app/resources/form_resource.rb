class FormResource < JSONAPI::Resource
  attributes :title # Überschrift des Formulars
  has_many :selections # zugeordnete Auswahldialoge
end
# Formular als Teil eines Auswahldialogs
