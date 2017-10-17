class DecisionResource < JSONAPI::Resource
  attributes :explanation, :question
  has_many :options, acts_as_set:true
end
# Datentyp, der eine Entscheidung im Flussdiagramm des Auszahlungsantragdialogs darstellen soll
# besteht aus einer Erklärung/Hilfe zur Entscheidungsfindung und der Formulierung der eigentlichen zu treffenden Entscheidung in Fragenform
# weiterhin bietet die Entscheidung verschiedene Optionen an
