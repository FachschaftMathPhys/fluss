class AddEditingStepToTheoretikumBilling < ActiveRecord::Migration[5.1]
  def change
    add_reference :theoretikum_billings, :tbstep, polymorphic: true
  end
end
