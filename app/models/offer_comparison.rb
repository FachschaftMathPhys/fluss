class OfferComparison < ApplicationRecord
  belongs_to :ocstep, polymorphic: true
  belongs_to :user
end
