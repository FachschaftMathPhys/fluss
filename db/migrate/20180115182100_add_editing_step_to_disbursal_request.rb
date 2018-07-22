class AddEditingStepToDisbursalRequest < ActiveRecord::Migration[5.1]
  def change
    add_reference :disbursal_requests, :drstep, polymorphic: true
  end
end
