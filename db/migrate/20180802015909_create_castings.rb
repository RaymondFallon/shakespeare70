class CreateCastings < ActiveRecord::Migration[5.1]
  def change
    create_table :castings do |t|
      t.references :member
      t.references :production
      t.references :position
      t.references :bio_type
      t.string :role
      t.integer :cast_order, limit: 3

      t.timestamps
    end
  end
end
