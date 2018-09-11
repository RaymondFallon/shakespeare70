class CreateProductions < ActiveRecord::Migration[5.1]
  def change
    create_table :productions do |t|
      t.string :title
      t.references :company, foreign_key: { to_table: :companies }
      t.references :venue, foreign_key: { to_table: :venues }

      t.date :start_date
      t.date :end_date
      t.integer :year, limit: 4
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday

      t.text :description

      t.timestamps
    end
  end
end
