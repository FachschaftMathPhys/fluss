class CreateTheoretikumBillings < ActiveRecord::Migration[5.1]
  def change
    create_table :theoretikum_billings do |t|
      t.date :submission_date
      t.date :resolution_date
      t.datetime :review_date
      t.datetime :approval_date
      t.datetime :mailing_date
      t.boolean :print_costs
      t.boolean :locker_rent
      t.string :miscellenea
      t.boolean :postage
      t.references :body, foreign_key: true
      t.decimal :figure
      t.binary :pdf
      t.date :event_date
      t.string :protocol_link
      t.integer :protocol_page
      t.references :budgetary_position, foreign_key: true
      t.references :offer_comparison, foreign_key: true
      t.timestamps
    end
  end
end
