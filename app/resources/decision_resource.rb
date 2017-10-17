class DecisionResource < JSONAPI::Resource
  attributes :explanation, :question
  relationship :options, to: :many, acts_as_set:true
end
# Datentyp, der eine Entscheidung im Flussdiagramm des Auszahlungsantragdialogs darstellen soll
# besteht aus einer Erklärung/Hilfe zur Entscheidungsfindung und der Formulierung der eigentlichen zu treffenden Entscheidung in Fragenform
# weiterhin bietet die Entscheidung verschiedene Optionen an
