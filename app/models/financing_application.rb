class FinancingApplication < ApplicationRecord
  belongs_to :fastep, polymorphic: true
  has_many :associated_withs, as: :expense
  has_many :offer_comparisons, through: :associated_withs
end
