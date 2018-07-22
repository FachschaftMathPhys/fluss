class Initmodel < ApplicationRecord
  belongs_to :initfollowup, polymorphic: true
  has_many :options, as: :optionfollowup
  has_one :start, as: :first
  has_many :selections, as: :selfollowup
end
