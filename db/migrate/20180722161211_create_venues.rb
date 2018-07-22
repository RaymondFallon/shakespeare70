class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.integer :zipcode
      t.text :description

      t.timestamps
    end
  end
end
