class FsResolution < ApplicationRecord
  has_one :fr_oc_necessary
  has_one :offer_comparison, through: :fr_oc_necessary
  belongs_to :budgetary_position
end
