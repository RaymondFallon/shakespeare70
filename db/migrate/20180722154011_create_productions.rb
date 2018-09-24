class CreateProductions < ActiveRecord::Migration[5.1]
  def change
    create_table :productions do |t|
      t.string :title
      t.references :company, foreign_key: { to_table: :companies }
      t.references :venue, foreign_key: { to_table: :venues }

      t.date :start_date
      t.date :end_date
      t.integer :year, limit: 4
      t.string :schedule_desc

      t.text :description
      t.string :has_all_data, limit: 1

      t.timestamps
    end
  end
end
