class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.string :code
      t.string :description
      t.integer :bio_order, limit: 3

      t.timestamps

      t.index :code, unique: true
    end
  end
end
