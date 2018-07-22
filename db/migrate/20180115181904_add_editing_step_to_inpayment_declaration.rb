class AddEditingStepToInpaymentDeclaration < ActiveRecord::Migration[5.1]
  def change
    add_reference :inpayment_declarations, :idstep, polymorphic: true
  end
end
