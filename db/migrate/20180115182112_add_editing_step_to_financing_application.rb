class AddEditingStepToFinancingApplication < ActiveRecord::Migration[5.1]
  def change
    add_reference :financing_applications, :fastep, polymorphic: true
  end
end
