class DisbursalRequest < ApplicationRecord
  belongs_to :offer_comparison
  belongs_to :body
  belongs_to :user
  belongs_to :budgetary_position
  belongs_to :account
  has_many :drink_positions, dependent: :destroy
end
