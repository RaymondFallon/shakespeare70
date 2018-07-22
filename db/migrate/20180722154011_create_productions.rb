class CreateProductions < ActiveRecord::Migration[5.1]
  def change
    create_table :productions do |t|
      t.string :title
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
