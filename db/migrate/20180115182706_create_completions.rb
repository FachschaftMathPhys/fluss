class CreateCompletions < ActiveRecord::Migration[5.1]
  def change
    create_table :completions do |t|
      t.text :success
      t.text :failure
    end
  end
end
