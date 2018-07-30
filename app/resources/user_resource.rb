class UserResource < JSONAPI::Resource
  relationship :accounts, to: :many # die konten des Benutzers
  has_many :disbursal_requests
  has_many :theoretikum_billings
  has_many :inpayment_declarations
  has_many :fs_resolutions
  has_many :financing_applications
  has_many :offer_comparisons
  attributes :name, :username # Name des Benutzers, Benutzername im Computersinne
end
# ein Benutzer dieses Programms
