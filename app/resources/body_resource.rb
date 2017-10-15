class BodyResource < JSONAPI::Resource
  attributes :name, :description
  has_many :disbursal_requests
  has_many :inpayment_declarations
  has_many :theoretikum_billings
end
