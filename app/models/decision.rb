class Decision < ApplicationRecord
  has_many :offers
  has_many :options, as: :optionfollowup
  has_many :ownoptions, :through => :offers,source: :option, class_name: "Option"
  has_many :initmodels, as: :initfollowup
  has_one :start, as: :first
  has_many :selections, as: :selfollowup
  has_many :inpayment_declarations, as: :idstep
  has_many :offer_comparisons, as: :ocstep
  has_many :theoretikum_billings, as: :tbstep
  has_many :financing_applications, as: :fastep
  has_many :disbursal_requests, as: :drstep
  has_many :fs_resolutions, as: :fsstep

end
