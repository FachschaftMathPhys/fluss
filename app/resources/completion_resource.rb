class CompletionResource < JSONAPI::Resource
  attributes :success, :failure
  has_many :options
  has_many :initmodels
  has_one :start
  has_many :selections
  has_many :inpayment_declarations
  has_many :offer_comparisons
  has_many :theoretikum_billings
  has_many :financing_applications
  has_many :disbursal_requests
  has_many :fs_resolutions
end
