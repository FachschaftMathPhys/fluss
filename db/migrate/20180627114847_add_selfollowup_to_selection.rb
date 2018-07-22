class AddSelfollowupToSelection < ActiveRecord::Migration[5.1]
  def change
    add_reference :selections, :selfollowup, polymorphic: true
  end
end
