class AddEditingStepToOfferComparison < ActiveRecord::Migration[5.1]
  def change
    add_reference :offer_comparisons, :ocstep, polymorphic: true
  end
end
