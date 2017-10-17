class FormElementResource < JSONAPI::Resource
  attributes :typ, :label, :data_field
  relationship :forms, to: :many # kann in vielen Formularen zum Einsatz kommen
end
# Formularelement: Typ des Elements(radio button, Dropdownliste, Textfeld,...), Beschriftung, zugeordnetes Datenfeld in den Models
