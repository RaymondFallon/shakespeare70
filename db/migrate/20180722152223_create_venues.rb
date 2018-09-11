class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :street_address
      t.string :suite_address
      t.string :town
      t.string :state, limit: 2
      t.string :zipcode, limit: 5
      t.text :description
      t.string :external_url

      t.timestamps
    end
  end
end
