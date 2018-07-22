class RemoveOcBelongTos < ActiveRecord::Migration[5.1]
  def change
    remove_reference :disbursal_requests, :offer_comparison
    remove_reference :fs_resolutions, :offer_comparison
    remove_reference :theoretikum_billings, :offer_comparison
  end
end
