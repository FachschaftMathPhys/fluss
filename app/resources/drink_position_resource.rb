class DrinkPositionResource < JSONAPI::Resource
  attributes :percentage, :quantity, :volume, :name
  relationship :disbursal_request, to: :one
end
# Einzelposten der Alkoholliste
# Volumenprozent Alkohol des Getränks, Anzahl der getrunkenen Gläser/Flaschen, Volumen einer Einzelflasche/-glas. Name/Bezeichnung des Getränks „Welde Naturradler“,...
