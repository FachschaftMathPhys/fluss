class TheoretikumBilling < ApplicationRecord
  has_many :associated_withs, as: :expense
  has_many :offer_comparisons, through: :associated_withs
  belongs_to :tbstep, polymorphic: true
  belongs_to :budgetary_position
  belongs_to :user
end
