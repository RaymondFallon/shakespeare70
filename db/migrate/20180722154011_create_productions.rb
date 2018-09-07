class CreateProductions < ActiveRecord::Migration[5.1]
  def change
    create_table :productions do |t|
      t.string :title
      t.references :company, foreign_key: { to_table: :companies }
      t.date :start_date
      t.date :end_date
      t.integer :year, limit: 4

      t.timestamps
    end
  end
end
