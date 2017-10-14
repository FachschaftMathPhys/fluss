class CreateHas < ActiveRecord::Migration[5.1]
  def change
    create_table :has do |t|
      t.references :user, foreign_key: true
      t.references :account, foreign_key: true
    end
  end
end
