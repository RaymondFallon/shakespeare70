class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.references :member
      t.references :production
      t.references :position_type
      t.string :role

      t.timestamps
    end
  end
end
