class DisbursalRequest < ApplicationRecord
  has_one :dr_oc_necessary
  has_one :offer_comparison, through: :dr_oc_necessary
  belongs_to :body
  belongs_to :user
  belongs_to :budgetary_position
  belongs_to :account
  has_many :drinks
  has_many :drink_positions, through: :drinks, dependent: :destroy
end
