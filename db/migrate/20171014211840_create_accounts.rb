class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :iban
      t.string :bic
      t.string :recipient

      t.timestamps
    end
  end
end
