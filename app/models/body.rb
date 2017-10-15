class Body < ApplicationRecord
  has_many :disbursal_requests, dependent: :destroy
  has_many :inpayment_declarations, dependent: :destroy
  has_many :theoretikum_billings, dependent: :destroy
end
