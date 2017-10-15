class BudgetaryPositionResource < JSONAPI::Resource
  attributes :classification_number, :amount, :title, :description, :examples
  has_many :disbursal_requests
  has_many :inpayment_declarations
  has_many :theoretikum_billings
end
