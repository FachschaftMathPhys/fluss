class AddFsstepToFsResolutions < ActiveRecord::Migration[5.1]
  def change
    add_reference :fs_resolutions, :fsstep, polymorphic: true
  end
end
