class SelectionResource < JSONAPI::Resource
  attributes :explanation, :title # Erklärung der Auswahl, Überschrift
  relationship :forms, to: :many
  has_many :initmodels
  has_one :start
  has_many :options
  has_one :selfollowup, polymorphic: true
  has_many :inpayment_declarations
  has_many :offer_comparisons
  has_many :theoretikum_billings
  has_many :financing_applications
  has_many :disbursal_requests
  has_many :fs_resolutions
end
# Erklärung der Auswahlmöglichkeiten in einer Auswahldialogsseite
