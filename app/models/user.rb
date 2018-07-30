class User < ApplicationRecord
  has_many :accounts, dependent: :destroy
  has_many :disbursal_requests, dependent: :destroy
  has_many :financing_applications, dependent: :destroy
  has_many :theoretikum_billings, dependent: :destroy
  has_many :inpayment_declarations, dependent: :destroy
  has_many :disbursal_requests, dependent: :destroy
  has_many :fs_resolutions, dependent: :destroy
  has_many :offer_comparisons, dependent: :destroy
end
