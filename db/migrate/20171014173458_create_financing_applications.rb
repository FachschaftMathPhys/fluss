class CreateFinancingApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :financing_applications do |t|
      t.date :session_date
      t.decimal :figure
      t.string :applicant
      t.text :description
      t.text :justification
      t.text :miscellenea

      t.timestamps
    end
  end
end
