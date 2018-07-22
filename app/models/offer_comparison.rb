class OfferComparison < ApplicationRecord
  belongs_to :ocstep, polymorphic: true
end
