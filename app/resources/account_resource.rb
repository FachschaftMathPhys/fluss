class AccountResource < JSONAPI::Resource
  attributes :iban, :bic, :recipient
  has_one :user
  has_many :disbursal_requests
end
