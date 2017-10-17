class CreateDisbursalRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :disbursal_requests do |t|
      t.text :description
      t.decimal :figure
      t.date :resolution_date
      t.datetime :review_date
      t.datetime :approval_date
      t.datetime :mailing_date
      t.datetime :submission_date
      t.boolean :invoice_settled
      t.boolean :authorized
      t.date :event_date
      t.boolean :food
      t.integer :attendee_count
      t.string :protocol_link
      t.integer :protocol_page
      t.binary :pdf
      t.decimal :deposit
      t.boolean :discount_card
      t.references :body, foreign_key: true
      t.references :user, foreign_key: true
      t.references :offer_comparison, foreign_key: true
      t.references :budgetary_position, foreign_key: true
      t.references :account, foreign_key: true
      t.timestamps
    end
  end
end
