class AssociatedWith < ApplicationRecord
  belongs_to :expense, polymorphic: true
  belongs_to :offer_comparison
end
