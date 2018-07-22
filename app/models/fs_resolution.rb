class FsResolution < ApplicationRecord
  belongs_to :budgetary_position
  belongs_to :fsstep, polymorphic: true
  has_many :associated_withs, as: :expense
  has_many :offer_comparisons, through: :associated_withs
end
