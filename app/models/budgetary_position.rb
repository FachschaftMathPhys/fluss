class BudgetaryPosition < ApplicationRecord
  belongs_to :budgetary_group
  has_many :disbursal_requests, dependent: :destroy
  has_many :inpayment_declarations, dependent: :destroy
end
