class Account < ApplicationRecord
  has_one :ownership
  has_one :user, through: :ownership
  has_many :disbursal_requests, dependent: :destroy
end
