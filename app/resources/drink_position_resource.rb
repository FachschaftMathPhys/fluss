class DrinkPositionResource < JSONAPI::Resource
  attributes :percentage, :quantity, :volume, :name
  has_one :disbursal_request
end
# Einzelposten der Alkoholliste
# Volumenprozent Alkohol des Getränks, Anzahl der getrunkenen Gläser/Flaschen, Volumen einer Einzelflasche/-glas. Name/Bezeichnung des Getränks „Welde Naturradler“,...
