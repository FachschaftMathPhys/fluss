class CreateInpaymentDeclarations < ActiveRecord::Migration[5.1]
  def change
    create_table :inpayment_declarations do |t|
      t.float :figure
      t.date :income_date
      t.date :event_date
      t.date :deposit_date
      t.boolean :deposit_receipt
      t.date :mailing_date
      t.boolean :income_testament
      t.datetime :review_date
      t.datetime :submission_date
      t.datetime :approval_date
      t.boolean :authorized
      t.references :budgetary_position, foreign_key: true
      t.references :body, foreign_key: true
    end
  end
end
