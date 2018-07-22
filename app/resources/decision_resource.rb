class DecisionResource < JSONAPI::Resource
  attributes :explanation, :question
  has_many :selections
  has_many :initmodels
  has_one :start
  has_many :options, class_name:"Option"
  has_many :ownoptions, class_name:"Option"
  has_many :inpayment_declarations
  has_many :offer_comparisons
  has_many :theoretikum_billings
  has_many :financing_applications
  has_many :disbursal_requests
  has_many :fs_resolutions
end
# Datentyp, der eine Entscheidung im Flussdiagramm des Auszahlungsantragdialogs darstellen soll
# besteht aus einer Erklärung/Hilfe zur Entscheidungsfindung und der Formulierung der eigentlichen zu treffenden Entscheidung in Fragenform
# weiterhin bietet die Entscheidung verschiedene Optionen an
