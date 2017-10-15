class TheoretikumBilling < ApplicationRecord
  belongs_to :body
  has_one :tb_oc_necessary
  has_one :offer_comparison, through: :tb_oc_necessary
  belongs_to :budgetary_position
end
