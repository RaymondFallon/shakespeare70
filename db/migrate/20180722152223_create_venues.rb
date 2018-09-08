class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :zipcode, limit: 5
      t.text :description
      t.string :external_url

      t.timestamps
    end
  end
end
