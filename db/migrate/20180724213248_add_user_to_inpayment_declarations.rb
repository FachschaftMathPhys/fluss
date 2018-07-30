class AddUserToInpaymentDeclarations < ActiveRecord::Migration[5.1]
  def change
    add_reference :inpayment_declarations, :user, foreign_key: true
    add_reference :theoretikum_billings, :user, foreign_key: true
    add_reference :fs_resolutions, :user, foreign_key: true
    add_reference :financing_applications, :user, foreign_key: true
    add_reference :offer_comparisons, :user, foreign_key: true
  end
end
