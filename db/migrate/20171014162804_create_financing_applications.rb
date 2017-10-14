class CreateFinancingApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :financing_applications do |t|
      t.date :session_date
      t.float :figure
      t.string :applicant
      t.text :description
      t.text :justification
      t.text :miscellenea
    end
  end
end
