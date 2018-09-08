class CreateBioTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :bio_types do |t|
      t.string :code
      t.string :description

      t.timestamps

      t.index :code, unique: true
    end
  end
end
