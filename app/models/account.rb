class Account < ApplicationRecord
  belongs_to :user
  has_many :disbursal_requests, dependent: :destroy
end
