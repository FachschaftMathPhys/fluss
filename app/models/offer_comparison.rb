class OfferComparison < ApplicationRecord
  has_one :dr_oc_necessary
  has_one :disbursal_request, through: :dr_oc_necessary
  has_one :tb_oc_necessary
  has_one :theoretikum_billing, through: :tb_oc_necessary
  has_one :fr_oc_necessary
  has_one :fs_resolution, through: :fr_oc_necessary
end
