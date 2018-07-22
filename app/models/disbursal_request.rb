class DisbursalRequest < ApplicationRecord
  has_many :associated_withs, as: :expense
  has_many :offer_comparisons, through: :associated_withs
  belongs_to :body
  belongs_to :user
  belongs_to :budgetary_position
  belongs_to :account
  has_many :drink_positions, dependent: :destroy
  belongs_to :drstep, polymorphic: true
end
